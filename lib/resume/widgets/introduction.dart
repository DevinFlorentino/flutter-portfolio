import 'package:flutter/material.dart';

import '../../components/text_components.dart';
import '../constants/content.dart';

class Introduction extends StatelessWidget {
  const Introduction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: paragraphText(introText),
    );
  }
}
