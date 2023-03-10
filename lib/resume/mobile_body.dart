import 'package:flutter/material.dart';
import 'package:portfolio_app/resume/widgets/education.dart';
import 'package:portfolio_app/resume/widgets/introduction.dart';
import 'package:portfolio_app/resume/widgets/profile_picture.dart';
import 'package:portfolio_app/resume/widgets/work_experience.dart';

import '../components/text_components.dart';
import 'constants/content.dart';
import 'theme/colors.dart';
import 'theme/text.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: appBarTextWidget(appBarHeaderText),
      ),
      body: Padding(
        padding: const EdgeInsets.all(minimumPadding),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: mediumPadding),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: ProfilePicture(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(mediumPadding),
              child: headerTextWidget(profileName),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
              child: buildDividerWidget(darkDividerColor),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Builder(builder: (context) {
                      return const Introduction();
                    }),
                    const Education(),
                    const WorkExperience(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
