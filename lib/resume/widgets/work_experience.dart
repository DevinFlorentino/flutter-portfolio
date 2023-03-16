import 'package:flutter/material.dart';

import '../../components/text_components.dart';
import '../constants/content.dart';
import '../theme/colors.dart';
import '../theme/text.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      headerTextWidget("Work Experience"),
      buildDividerWidget(lightDividerColor),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: mediumPadding),
        child: buildWorkExperienceItems(),
      ),
    ]);
  }
}

Widget buildWorkExperienceItems() {
  List<Widget> experienceList = [];
  workExperienceMap.forEach((key, data) {
    List dailyTasks = data['dailyTasks'].toList();
    experienceList.add(Padding(
      padding: const EdgeInsets.only(bottom: mediumPadding),
      child: Column(
        children: [
          buildCompanyJobTitleRow(data['company'], data['jobTitle']),
          buildTimePeriod(data['timeFrame']),
          buildResponsibilityList(dailyTasks),
        ],
      ),
    ));
  });

  return Column(
    children: experienceList,
  );
}

Widget buildResponsibilityList(List dailyTasks) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: dailyTasks
        .map((task) => paragraphTextWidget('$bulletPoint $task'))
        .toList(),
  );
}

Row buildCompanyJobTitleRow(String company, String jobTitle) => Row(
      children: [
        Expanded(child: subHeaderTextWidget('$company  -  $jobTitle')),
      ],
    );

Row buildJobTitle(String title) => Row(
      children: [
        Expanded(child: paragraphTextWidget(title)),
      ],
    );

Row buildTimePeriod(String timeFrame) => Row(
      children: [
        Expanded(child: paragraphTextWidget(timeFrame)),
      ],
    );

Row buildResponsibility(String responsibility) => Row(
      children: [
        Expanded(child: paragraphTextWidget(responsibility)),
      ],
    );
