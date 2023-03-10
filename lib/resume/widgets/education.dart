import 'package:flutter/material.dart';
import 'package:portfolio_app/components/text_components.dart';
import 'package:portfolio_app/resume/theme/colors.dart';

import '../constants/content.dart';
import '../theme/text.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
      child: Column(
        children: [
          headerTextWidget("Education"),
          buildDividerWidget(lightDividerColor),
          Column(
            children: [
              buildInstitutionText(),
              buildLocationText(),
              buildQualificationText(),
              buildDateObtainedText()
            ],
          )
        ],
      ),
    );
  }
}

Row buildInstitutionText() => Row(
      children: [
        Expanded(child: subHeaderTextWidget(educationInstitute)),
      ],
    );

Row buildLocationText() => Row(
      children: [
        Expanded(child: paragraphTextWidget(educationLocation)),
      ],
    );

Row buildQualificationText() => Row(
      children: [
        Expanded(child: paragraphTextWidget(educationQualification)),
      ],
    );

Row buildDateObtainedText() => Row(
      children: [
        Expanded(child: paragraphTextWidget(educationDateObtained)),
      ],
    );
