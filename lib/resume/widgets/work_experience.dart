import 'dart:convert';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/resume/theme/colors.dart';

import '../../components/text_components.dart';
import '../constants/content.dart';
import '../theme/text.dart';

class WorkExperience extends StatelessWidget {
  const WorkExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: minimumPadding),
      child: Column(children: [
        headerTextWidget("Work Experience"),
        buildDividerWidget(lightDividerColor),
        buildWorkExperienceList(),
      ]),
    );
  }
}

List<Widget> buildEmploymentList() {
  List<Widget> employmentList = [];
  workExperienceMap.forEach((key, data) {
    employmentList.add(Padding(
      padding: const EdgeInsets.only(bottom: mediumPadding),
      child: Column(
        children: [
          buildCompanyJobTitleRow(data['company'], data['jobTitle']),
          buildTimePeriod(data['timeFrame']),
        ],
      ),
    ));
  });

  return employmentList;
}

List<Widget> buildResponsibilityList(Map skills) {
  List<Widget> skillsList = [];
  skills.forEach((key, responsibility) {
    skillsList.add(Padding(
      padding: const EdgeInsets.only(bottom: mediumPadding),
      child: Column(
        children: [
          buildResponsibility(responsibility),
        ],
      ),
    ));
  });

  return skillsList;
}

buildWorkExperienceList() {
  return Column(
    children: buildEmploymentList(),
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
