import 'package:flutter/material.dart';
import 'package:flutter_presentation/common/bullet_list.dart';

import '../../templates/templates.dart';

class AgendaSlide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SplitScreenTemplate(
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
    );
  }
}
