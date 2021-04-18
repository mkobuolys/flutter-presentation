import 'package:flutter/material.dart';

import '1_title/title_slide.dart';
import '2_agenda/agenda_slide.dart';
import '3_about_me/about_me_slide.dart';
import 'custom_ui/custom_ui_slide.dart';
import 'drawbacks_of_flutter/drawbacks_of_flutter_slide.dart';
import 'rive/rive_slide.dart';
import 'thank_you/thank_you_slide.dart';

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
              return const AboutMeSlide();
            case 3:
              return const CustomUiSlide();
            case 4:
              return const RiveSlide();
            case 5:
              return const DrawbacksOfFlutterSlide();
            case 6:
              return const ThankYouSlide();
          }

          return const SizedBox();
        },
        itemCount: 7,
      ),
    );
  }
}
