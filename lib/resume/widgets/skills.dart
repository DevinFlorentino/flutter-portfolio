import 'package:flutter/material.dart';

import '../../components/text_components.dart';
import '../constants/content.dart';
import '../theme/colors.dart';
import '../theme/text.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        headerTextWidget("Skills"),
        buildDividerWidget(lightDividerColor),
        buildSkillsList(),
      ],
    );
  }
}

Widget buildSkillsList() {
  return Padding(
    padding: const EdgeInsets.only(
        left: mediumPadding, right: mediumPadding, bottom: mediumPadding),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: skillList
            .map((skill) => paragraphTextWidget('$bulletPoint $skill'))
            .toList()),
  );
}
