import 'package:flutter/material.dart';
import 'package:portfolio_app/resume/widgets/introduction.dart';
import 'package:portfolio_app/resume/widgets/profile_picture.dart';

import '../components/text_components.dart';
import 'constants/content.dart';
import 'theme/colors.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: appBarColor,
        title: appBarText(profileNameMobile),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: AspectRatio(aspectRatio: 16 / 9, child: ProfilePicture()),
            ),
            const Expanded(child: Introduction()),
            Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: ((context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: const Color.fromARGB(230, 154, 124, 237),
                            height: 100,
                          ),
                        ))))
          ],
        ),
      ),
    );
  }
}
