import 'package:flutter/material.dart';

import '../../components/text_components.dart';
import '../constants/content.dart';
import '../theme/text.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
          mediumPadding, 0, mediumPadding, mediumPadding),
      child: introTextWidget(introText),
    );
  }
}
