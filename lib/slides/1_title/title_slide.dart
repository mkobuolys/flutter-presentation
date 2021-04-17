import 'package:flutter/material.dart';

import '../../common/social_media_wrapper.dart';
import '../../templates/templates.dart';

class TitleSlide extends StatelessWidget {
  const TitleSlide();

  @override
  Widget build(BuildContext context) {
    return const SocialMediaWrapper(
      child: TitleScreenTemplate(),
    );
  }
}
