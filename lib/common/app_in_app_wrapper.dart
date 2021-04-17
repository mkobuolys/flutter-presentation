import 'package:flutter/material.dart';

class AppInAppWrapper extends StatelessWidget {
  final Widget app;

  const AppInAppWrapper({
    required this.app,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 450.0,
        maxHeight: 800.0,
      ),
      child: ClipRect(
        child: AspectRatio(
          aspectRatio: 9 / 16,
          child: app,
        ),
      ),
    );
  }
}
