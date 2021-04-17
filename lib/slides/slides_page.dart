import 'package:flutter/material.dart';
import 'package:flutter_presentation/slides/3_custom_ui/custom_ui_slide.dart';

import '1_title/title_slide.dart';
import '2_agenda/agenda_slide.dart';

class SlidesPage extends StatelessWidget {
  const SlidesPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return const TitleSlide();
            case 1:
              return const AgendaSlide();
            case 2:
              return const CustomUiSlide();
          }

          return const SizedBox();
        },
      ),
    );
  }
}
