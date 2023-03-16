import 'package:flutter/material.dart';

import '../../components/text_components.dart';
import '../constants/content.dart';
import '../theme/colors.dart';
import '../theme/text.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        headerTextWidget("Education"),
        buildDividerWidget(lightDividerColor),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
          child: Column(
            children: [
              buildInstitutionText(),
              buildLocationText(),
              buildQualificationText(),
              buildDateObtainedText()
            ],
          ),
        )
      ],
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
