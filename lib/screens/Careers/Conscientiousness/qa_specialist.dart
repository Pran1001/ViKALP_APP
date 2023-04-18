
import 'package:flutter/material.dart';

class QualityAssuranceRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Quality Assurance Specialist Roadmap'),
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
"Earn a Bachelor's Degree in Computer Science or Related Field",
[
_buildTreeNode(
'Gain foundational knowledge in software development',
[],
),
_buildTreeNode(
'Develop understanding of testing methodologies and tools',
[],
),
],
),
_buildTreeNode(
'Complete Quality Assurance Certification Courses',
[
_buildTreeNode(
'Obtain Certified Software Quality Analyst (CSQA) certification',
[],
),
_buildTreeNode(
'Obtain Certified Quality Improvement Associate (CQIA) certification',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world projects',
[],
),
_buildTreeNode(
'Develop skills in testing software and reporting defects',
[],
),
],
),
],
),
_buildTreeNode(
'Developing Skills and Expertise',
[
_buildTreeNode(
'Gain Experience Testing Complex Software Systems',
[
_buildTreeNode(
'Develop skills in test planning and execution',
[],
),
_buildTreeNode(
'Learn to use automated testing tools',
[],
),
],
),
_buildTreeNode(
'Specialize in a Specific Industry or Type of Software',
[
_buildTreeNode(
'Develop expertise in areas such as healthcare or finance',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Become a Certified Software Tester (CSTE)',
[
_buildTreeNode(
'Learn to apply software testing principles and methodologies',
[],
),
_buildTreeNode(
'Develop skills in evaluating testing processes and procedures',
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
'Advance to Senior Quality Assurance Specialist or Test Manager',
[
_buildTreeNode(
'Develop skills in test strategy and risk management',
[],
),
_buildTreeNode(
'Oversee multiple testing projects or programs simultaneously',
[],
),
],
),
_buildTreeNode(
'Transition to a Quality Assurance Management Role',
[
_buildTreeNode(
'Develop skills in team management and process improvement',
[],
),
_buildTreeNode(
'Apply quality assurance principles to improve organizational performance',
[],
),
],
),
_buildTreeNode(
'Start a Quality Assurance Consulting Firm or Business',
[
_buildTreeNode(
'Develop a niche in the market and build a client base',
[],
),
_buildTreeNode(
'Hire additional staff and expand the business',
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