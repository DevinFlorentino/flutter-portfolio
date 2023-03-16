import 'package:flutter/material.dart';
import 'package:portfolio_app/components/menu.dart';

import '../components/text_components.dart';
import 'constants/content.dart';
import 'mobile_body.dart';
import 'theme/colors.dart';
import 'theme/text.dart';
import 'widgets/contact.dart';
import 'widgets/education.dart';
import 'widgets/introduction.dart';
import 'widgets/profile_picture.dart';
import 'widgets/skills.dart';
import 'widgets/work_experience.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: const Menu(),
      backgroundColor: scaffoldColor,
      body: Row(
        children: [
          buildSidePanel(context),
          buildResume(),
        ],
      ),
    );
  }
}

Widget buildSidePanel(BuildContext context) {
  double aspectWidth = 7;
  if (MediaQuery.of(context).size.height < 1000.0 &&
      MediaQuery.of(context).size.width < 800.0) aspectWidth = 6;
  return Padding(
    padding: const EdgeInsets.all(minimumPadding),
    child: AspectRatio(
      aspectRatio: aspectWidth / 16,
      child: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: sidePanelColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(children: [
            buildProfilePicture(const EdgeInsets.all(mediumPadding)),
            Column(children: [
              buildProfileHeader(),
              const Introduction(),
              const Contact(),
            ]),
          ]),
        ),
      ),
    ),
  );
}

Widget buildResume() => Expanded(
      child: Padding(
        padding: const EdgeInsets.all(minimumPadding),
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Education(),
              const WorkExperience(),
              const Skills(),
            ],
          ),
        ),
      ),
    );

Widget buildProfileHeader() => Column(children: [
      headerTextWidget(profileName),
      Center(child: centeredSubHeaderTextWidget(appBarHeaderText)),
      buildDividerWidget(orangeAppColor),
    ]);
