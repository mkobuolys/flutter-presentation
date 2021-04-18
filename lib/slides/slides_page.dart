import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '1_title/title_slide.dart';
import '2_agenda/agenda_slide.dart';
import '3_about_me/about_me_slide.dart';
import 'custom_ui/custom_ui_slide.dart';
import 'drawbacks_of_flutter/drawbacks_of_flutter_slide.dart';
import 'flutter_for_web/flutter_for_web_slide.dart';
import 'rive/rive_slide.dart';
import 'thank_you/thank_you_slide.dart';

class SlidesPage extends StatefulWidget {
  const SlidesPage();

  @override
  _SlidesPageState createState() => _SlidesPageState();
}

class _SlidesPageState extends State<SlidesPage> {
  static const _slideSwitchDuration = Duration(milliseconds: 500);
  static const _slideSwitchCurve = Curves.easeInOut;
  static const _slidesCount = 8;

  final _pageController = PageController();
  final _focusNode = FocusNode();

  late final Map<LogicalKeySet, Intent> _shortcuts;
  late final Map<Type, Action<Intent>> _actions;

  @override
  void initState() {
    super.initState();

    _shortcuts = <LogicalKeySet, Intent>{
      LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.arrowLeft):
          const _HandleSlideIntent.arrowLeft(),
      LogicalKeySet(LogicalKeyboardKey.alt, LogicalKeyboardKey.arrowRight):
          const _HandleSlideIntent.arrowRight(),
    };
    _actions = <Type, Action<Intent>>{
      _HandleSlideIntent: CallbackAction<_HandleSlideIntent>(
        onInvoke: _handleShortcut,
      ),
    };
  }

  @override
  void dispose() {
    _pageController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _handleShortcut(_HandleSlideIntent intent) {
    switch (intent.button) {
      case _KeyboardButton.arrowLeft:
        setState(() {
          if (_pageController.page != 0) {
            _pageController.previousPage(
              duration: _slideSwitchDuration,
              curve: _slideSwitchCurve,
            );
          }
        });

        break;
      case _KeyboardButton.arrowRight:
        setState(() {
          if (_pageController.page! < _slidesCount - 1) {
            _pageController.nextPage(
              duration: _slideSwitchDuration,
              curve: _slideSwitchCurve,
            );
          }
        });

        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FocusableActionDetector(
        shortcuts: _shortcuts,
        actions: _actions,
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(_focusNode);
          },
          child: Focus(
            focusNode: _focusNode,
            child: PageView.builder(
              controller: _pageController,
              itemBuilder: (context, index) {
                switch (index) {
                  case 0:
                    return const TitleSlide();
                  case 1:
                    return const AgendaSlide();
                  case 2:
                    return const AboutMeSlide();
                  case 3:
                    return const FlutterForWebSlide();
                  case 4:
                    return const CustomUiSlide();
                  case 5:
                    return const RiveSlide();
                  case 6:
                    return const DrawbacksOfFlutterSlide();
                  case 7:
                    return const ThankYouSlide();
                }

                return const SizedBox();
              },
              itemCount: _slidesCount,
            ),
          ),
        ),
      ),
    );
  }
}

class _HandleSlideIntent extends Intent {
  final _KeyboardButton button;

  const _HandleSlideIntent({
    required this.button,
  });

  const _HandleSlideIntent.arrowLeft() : button = _KeyboardButton.arrowLeft;
  const _HandleSlideIntent.arrowRight() : button = _KeyboardButton.arrowRight;
}

enum _KeyboardButton {
  arrowLeft,
  arrowRight,
}
