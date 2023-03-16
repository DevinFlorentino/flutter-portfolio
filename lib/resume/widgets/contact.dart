import 'package:flutter/material.dart';

import '../../components/text_components.dart';
import '../constants/content.dart';
import '../theme/colors.dart';
import '../theme/text.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        subHeaderTextWidget("CONTACT"),
        buildDividerWidget(darkDividerColor),
        buildContactInfo(),
      ],
    );
  }
}

Widget buildContactInfo() => Padding(
      padding: const EdgeInsets.all(mediumPadding),
      child: Column(
        children: [
          buildContactInfoLine(
              Icons.phone_android, phoneNumber, genosParagraphStyle),
          buildContactInfoLine(
              Icons.email_outlined, email, genosParagraphStyle),
          buildContactInfoLine(Icons.link, linkedIn, genosParagraphStyle),
        ],
      ),
    );

Widget buildContactInfoLine(IconData iconData, String text, TextStyle style) =>
    Row(
      children: [Expanded(child: contactTextWidget(iconData, text, style))],
    );
