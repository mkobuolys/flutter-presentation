import 'package:flutter/material.dart';

import '1_title/title_slide.dart';
import '2_agenda/agenda_slide.dart';
import '3_custom_ui/custom_ui_slide.dart';
import '4_thank_you/thank_you_slide.dart';

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
            case 3:
              return const ThankYouSlide();
          }

          return const SizedBox();
        },
        itemCount: 4,
      ),
    );
  }
}
