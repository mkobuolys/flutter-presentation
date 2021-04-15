import 'package:flutter/material.dart';

import '1_title/title_slide.dart';
import '2_agenda/agenda_slide.dart';

class SlidesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          // TitleSlide(),
          AgendaSlide(),
        ],
      ),
    );
  }
}
