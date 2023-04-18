import 'package:flutter/material.dart';

class NurseCareerRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Nurse Career Roadmap'),
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
'Earn a Nursing Degree',
[
_buildTreeNode(
'Complete a Nursing Program',
[
_buildTreeNode(
'Select an accredited nursing program',
[],
),
_buildTreeNode(
'Choose an area of specialization, such as pediatrics or geriatrics',
[],
),
],
),
_buildTreeNode(
'Pass the NCLEX Exam',
[
_buildTreeNode(
'Obtain a license to practice nursing',
[],
),
_buildTreeNode(
'Fulfill continuing education requirements to maintain license',
[],
),
],
),
],
),
_buildTreeNode(
'Gain Practical Experience',
[
_buildTreeNode(
'Work in a Clinical Setting',
[
_buildTreeNode(
'Learn to administer medication and provide patient care',
[],
),
_buildTreeNode(
'Develop critical thinking and decision-making skills',
[],
),
],
),
_buildTreeNode(
'Volunteer or Work in a Non-Clinical Setting',
[
_buildTreeNode(
'Provide education and health promotion in community settings',
[],
),
_buildTreeNode(
'Develop leadership and organizational skills',
[],
),
],
),
],
),
_buildTreeNode(
'Specialize and Advance Your Career',
[
_buildTreeNode(
"Pursue a Master's Degree in Nursing",
[
_buildTreeNode(
'Develop advanced nursing skills and knowledge',
[],
),
_buildTreeNode(
'Qualify for specialized nursing positions and leadership roles',
[],
),
],
),
_buildTreeNode(
'Obtain Certification in a Nursing Specialty',
[
_buildTreeNode(
'Demonstrate expertise in a specific area of nursing',
[],
),
_buildTreeNode(
'Qualify for higher-paying and more specialized nursing positions',
[],
),
],
),
_buildTreeNode(
'Transition to a Non-Clinical Role',
[
_buildTreeNode(
'Develop skills in healthcare administration or education',
[],
),
_buildTreeNode(
'Apply nursing knowledge to non-clinical settings, such as research or policy development',
[],
),
],
),
],
),
_buildTreeNode(
'Become a Nurse Practitioner or Nurse Anesthetist',
[
_buildTreeNode(
'Complete Advanced Education and Training',
[
_buildTreeNode(
"Earn a Master's Degree in Nursing",
[],
),
_buildTreeNode(
'Complete additional clinical training and coursework',
[],
),
],
),
_buildTreeNode(
'Obtain Certification as a Nurse Practitioner or Nurse Anesthetist',
[
_buildTreeNode(
'Demonstrate advanced nursing knowledge and skills',
[],
),
_buildTreeNode(
'Qualify for high-paying and specialized nursing positions',
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