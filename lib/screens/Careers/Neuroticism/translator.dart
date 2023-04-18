import 'package:flutter/material.dart';

class TranslatorRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Translator Roadmap'),
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
'Earn a Bachelor’s Degree in a Foreign Language or Translation Studies',
[
_buildTreeNode(
'Develop fluency in a foreign language',
[],
),
_buildTreeNode(
'Learn the principles and techniques of translation',
[],
),
],
),
_buildTreeNode(
'Pursue Advanced Education in Translation or a Specialized Field',
[
_buildTreeNode(
'Obtain a Master’s degree in Translation Studies or a specialized field such as Law or Medicine',
[],
),
_buildTreeNode(
'Develop expertise in a particular field of translation',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Positions',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world translation projects',
[],
),
_buildTreeNode(
'Develop skills in using translation software and tools',
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
'Specialize in a Particular Language or Type of Translation',
[
_buildTreeNode(
'Develop fluency in a less common language',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Obtain Certification',
[
_buildTreeNode(
'Become a Certified Translator through organizations such as the American Translators Association (ATA)',
[],
),
_buildTreeNode(
'Obtain specialized certification in areas such as legal or medical translation',
[],
),
],
),
_buildTreeNode(
'Develop Interpersonal and Communication Skills',
[
_buildTreeNode(
'Learn to work with people from diverse cultures and backgrounds',
[],
),
_buildTreeNode(
'Develop strong written and verbal communication skills',
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
'Gain Experience in a Specialized Field or Industry',
[
_buildTreeNode(
'Develop expertise in a particular area such as business, legal or medical translation',
[],
),
_buildTreeNode(
'Establish a reputation as a reliable and accurate translator in the field',
[],
),
],
),
_buildTreeNode(
'Become a Freelance Translator',
[
_buildTreeNode(
'Develop a network of clients and establish a reputation for quality work',
[],
),
_buildTreeNode(
'Manage business and financial aspects of being self-employed',
[],
),
],
),
_buildTreeNode(
'Become an In-House Translator or Interpreter',
[
_buildTreeNode(
'Work for a company or organization that requires translation or interpretation services',
[],
),
_buildTreeNode(
'Develop expertise in a particular industry or subject matter',
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