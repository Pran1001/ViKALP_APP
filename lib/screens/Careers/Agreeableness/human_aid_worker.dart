import 'package:flutter/material.dart';

class HumanitarianAidWorkerRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Humanitarian Aid Worker Roadmap'),
backgroundColor: Color(0xff380955),
),
body: Center(
child: _buildTree(),
),
);
}

Widget _buildTree() {
return SingleChildScrollView(
child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
_buildTreeNode(
'Education and Training',
[
_buildTreeNode(
"Earn a Bachelor's Degree in a Related Field",
[
_buildTreeNode(
'Choose a major in international relations, political science, social work, or a related field',
[],
),
_buildTreeNode(
'Take courses in global issues, human rights, and cross-cultural communication',
[],
),
],
),
_buildTreeNode(
"Pursue a Master's Degree in International Development or Humanitarian Affairs",
[
_buildTreeNode(
'Gain in-depth knowledge of humanitarian principles and policies',
[],
),
_buildTreeNode(
'Develop skills in project management and community development',
[],
),
],
),
_buildTreeNode(
'Obtain Certifications in Humanitarian Aid Work',
[
_buildTreeNode(
'Complete the Humanitarian Essentials Certification Programme',
[],
),
_buildTreeNode(
'Get certified in field security management, risk management, and safety',
[],
),
],
),
],
),
_buildTreeNode(
'Gaining Experience',
[
_buildTreeNode(
'Intern or Volunteer with a Humanitarian Organization',
[
_buildTreeNode(
'Gain practical experience in project planning and management',
[],
),
_buildTreeNode(
'Develop cross-cultural communication and interpersonal skills',
[],
),
],
),
_buildTreeNode(
'Work in Disaster Response and Recovery',
[
_buildTreeNode(
'Respond to natural disasters, conflicts, and other crises',
[],
),
_buildTreeNode(
'Coordinate the distribution of aid and resources to affected communities',
[],
),
],
),
_buildTreeNode(
'Develop Technical Skills',
[
_buildTreeNode(
'Gain proficiency in monitoring and evaluation of programs and projects',
[],
),
_buildTreeNode(
'Learn to use data analysis software and mapping tools',
[],
),
],
),
],
),
_buildTreeNode(
'Building a Career',
[
_buildTreeNode(
'Advance to a Leadership Role',
[
_buildTreeNode(
'Develop skills in strategic planning and program management',
[],
),
_buildTreeNode(
'Manage teams and oversee multiple projects',
[],
),
],
),
_buildTreeNode(
'Pursue Specialization in a Field of Humanitarian Work',
[
_buildTreeNode(
'Focus on a specific area such as health, education, or gender',
[],
),
_buildTreeNode(
'Become an expert in a particular region or context',
[],
),
],
),
_buildTreeNode(
'Transition to an Advocacy Role',
[
_buildTreeNode(
'Use skills in public speaking and media relations to raise awareness about humanitarian issues',
[],
),
_buildTreeNode(
'Advocate for policy changes to improve the lives of affected communities',
[],
),
],
),
],
),
],
),
);
}
Widget _buildTreeNode(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }
}