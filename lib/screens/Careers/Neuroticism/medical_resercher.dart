import 'package:flutter/material.dart';

class MedicalResearcherRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Medical Researcher Roadmap'),
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
"Earn a Bachelor's Degree in a Scientific Field",
[
_buildTreeNode(
'Gain a foundational knowledge in biology, chemistry and other relevant fields',
[],
),
_buildTreeNode(
'Develop critical thinking and research skills',
[],
),
],
),
_buildTreeNode(
'Pursue a Graduate Degree in Medical Research',
[
_buildTreeNode(
"Earn a Master's degree in medical research",
[],
),
_buildTreeNode(
'Earn a Ph.D. in medical research',
[],
),
_buildTreeNode(
'Develop skills in designing, conducting and interpreting research studies',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply research principles learned in coursework to real-world research projects',
[],
),
_buildTreeNode(
'Develop skills in scientific writing and data analysis',
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
'Gain Experience Conducting Research Studies',
[
_buildTreeNode(
'Develop skills in designing and conducting experiments',
[],
),
_buildTreeNode(
'Learn to analyze and interpret data',
[],
),
_buildTreeNode(
'Develop skills in scientific writing and publishing',
[],
),
],
),
_buildTreeNode(
'Specialize in a Specific Area of Medical Research',
[
_buildTreeNode(
'Develop expertise in areas such as neuroscience or immunology',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Stay Up-to-Date with Advancements in Medical Research',
[
_buildTreeNode(
'Attend scientific conferences and symposiums',
[],
),
_buildTreeNode(
'Read scientific literature and stay informed about advancements in the field',
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
'Advance to Senior Medical Researcher or Research Manager',
[
_buildTreeNode(
'Develop skills in managing and leading a team of researchers',
[],
),
_buildTreeNode(
'Oversee multiple research projects simultaneously',
[],
),
],
),
_buildTreeNode(
'Transition to a Teaching or Academic Research Role',
[
_buildTreeNode(
'Develop skills in teaching and mentoring students',
[],
),
_buildTreeNode(
'Conduct research and publish papers in academic journals',
[],
),
],
),
_buildTreeNode(
'Start a Medical Research Consulting Firm or Business',
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
)
);



}

 Widget _buildTreeNode(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title),
      children: children,
    );
  }
}