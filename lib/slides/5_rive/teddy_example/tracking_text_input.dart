import 'dart:async';

import 'package:flutter/material.dart';

import 'input_helper.dart';

typedef CaretMoved = void Function(Offset? globalCaretPosition);
typedef TextChanged = void Function(String text);

// Helper widget to track caret position.
class TrackingTextInput extends StatefulWidget {
  const TrackingTextInput(
      {Key? key,
      this.onCaretMoved,
      this.onTextChanged,
      this.hint,
      this.label,
      this.isObscured = false})
      : super(key: key);
  final CaretMoved? onCaretMoved;
  final TextChanged? onTextChanged;
  final String? hint;
  final String? label;
  final bool isObscured;
  @override
  _TrackingTextInputState createState() => _TrackingTextInputState();
}

class _TrackingTextInputState extends State<TrackingTextInput> {
  final _fieldKey = GlobalKey();
  final _textController = TextEditingController();
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();

    _textController.addListener(() {
      // We debounce the listener as sometimes the caret position is updated after the listener
      // this assures us we get an accurate caret position.
      if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();
      _debounceTimer = Timer(const Duration(milliseconds: 100), () {
        if (_fieldKey.currentContext != null) {
          // Find the render editable in the field.
          final RenderObject? fieldBox =
              _fieldKey.currentContext?.findRenderObject();
          var caretPosition =
              fieldBox is RenderBox ? getCaretPosition(fieldBox) : null;

          final globalTextInputPosition = _fieldKey.globalPaintBounds;

          if (caretPosition != null && globalTextInputPosition != null) {
            caretPosition -= Offset(globalTextInputPosition.left + 150.0, 0.0);
          }

          widget.onCaretMoved?.call(caretPosition);
        }
      });
      widget.onTextChanged?.call(_textController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: widget.hint,
          labelText: widget.label,
        ),
        key: _fieldKey,
        controller: _textController,
        obscureText: widget.isObscured,
        validator: (value) {},
      ),
    );
  }
}

extension _GlobalKeyExtension on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();

    if (translation != null && renderObject?.paintBounds != null) {
      return renderObject!.paintBounds
          .shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }
}
