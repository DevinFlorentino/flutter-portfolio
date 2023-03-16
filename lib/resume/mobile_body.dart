import 'package:flutter/material.dart';

import '../components/text_components.dart';
import 'constants/content.dart';
import 'theme/colors.dart';
import 'theme/text.dart';
import 'widgets/education.dart';
import 'widgets/introduction.dart';
import '../components/menu.dart';
import 'widgets/profile_picture.dart';
import 'widgets/skills.dart';
import 'widgets/work_experience.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: orangeAppColor,
      backgroundColor: scaffoldColor,
      appBar: buildAppBar(),
      drawer: const Menu(),
      body: Padding(
        padding: const EdgeInsets.all(minimumPadding),
        child: Column(
          children: [
            buildMobileProfileHeader(),
            buildMobileResume(),
          ],
        ),
      ),
    );
  }
}

AppBar buildAppBar() => AppBar(
      centerTitle: true,
      backgroundColor: appBarColor,
      title: appBarTextWidget(appBarHeaderText),
    );

Widget buildMobileProfileHeader() => Padding(
      padding: const EdgeInsets.only(bottom: mediumPadding),
      child: Container(
        decoration: BoxDecoration(
          color: sidePanelColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            bottomRight: Radius.circular(00),
            bottomLeft: Radius.circular(0),
            topRight: Radius.circular(50),
          ),
        ),
        child: Column(
          children: [
            buildProfilePicture(const EdgeInsets.only(top: mediumPadding)),
            buildProfileName(),
            Center(child: centeredSubHeaderTextWidget(appBarHeaderText)),
            buildDividerWidget(orangeAppColor)
          ],
        ),
      ),
    );

Widget buildMobileResume() => Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            Introduction(),
            Education(),
            WorkExperience(),
            Skills(),
          ],
        ),
      ),
    );

Widget buildProfileName() => Padding(
      padding: const EdgeInsets.all(minimumPadding),
      child: headerTextWidget(profileName),
    );
