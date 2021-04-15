import 'package:flutter/material.dart';

import 'slides/slides_page.dart';

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Presentation',
      debugShowCheckedModeBanner: false,
      home: SlidesPage(),
    );
  }
}
