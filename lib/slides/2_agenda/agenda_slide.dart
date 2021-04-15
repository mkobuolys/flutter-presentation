import 'package:flutter/material.dart';

import '../../common/bullet_list.dart';
import '../../common/social_media_wrapper.dart';
import '../../templates/templates.dart';

class AgendaSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SocialMediaWrapper(
      child: SplitScreenTemplate(
        title: 'Agenda',
        leftChild: BulletList(
          items: [
            'About me',
            'About Flutter',
            'About Flutter, but in detail',
            'About you',
          ],
        ),
        rightChild: Text('Right'),
        leftFlex: 2,
        rightFlex: 3,
      ),
    );
  }
}
