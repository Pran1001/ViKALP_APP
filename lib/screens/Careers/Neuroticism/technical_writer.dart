import 'package:flutter/material.dart';

class TechnicalWriterRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Technical Writer Roadmap'),
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
"Earn a Bachelor's Degree in English, Communications, or a Technical Field",
[
_buildTreeNode(
'Develop strong writing and editing skills',
[],
),
_buildTreeNode(
'Learn about technical subjects, such as computer science or engineering',
[],
),
],
),
_buildTreeNode(
'Pursue Additional Training or Certifications',
[
_buildTreeNode(
'Take courses in technical writing, graphic design, and other relevant subjects',
[],
),
_buildTreeNode(
'Become certified by organizations such as the Society for Technical Communication (STC)',
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
'Develop Technical Expertise in a Particular Field',
[
_buildTreeNode(
'Gain experience in writing technical documentation for a particular industry or field',
[],
),
_buildTreeNode(
'Learn about the products or services offered by the company you work for',
[],
),
],
),
_buildTreeNode(
'Develop Writing and Editing Skills',
[
_buildTreeNode(
'Practice writing and editing on a regular basis',
[],
),
_buildTreeNode(
'Learn to write for different audiences, such as developers or end-users',
[],
),
],
),
_buildTreeNode(
'Collaborate with Other Departments',
[
_buildTreeNode(
'Work with product managers, designers, and engineers to understand technical concepts',
[],
),
_buildTreeNode(
'Develop strong communication and collaboration skills',
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
'Advance to Senior Technical Writer or Team Lead',
[
_buildTreeNode(
'Develop project management skills',
[],
),
_buildTreeNode(
'Lead a team of technical writers on larger projects',
[],
),
],
),
_buildTreeNode(
'Transition to a Related Role',
[
_buildTreeNode(
'Become a technical editor or content strategist',
[],
),
_buildTreeNode(
'Transition to a related field, such as user experience (UX) design',
[],
),
],
),
_buildTreeNode(
'Start a Technical Writing Consulting Business',
[
_buildTreeNode(
'Build a network of clients and develop a niche in the market',
[],
),
_buildTreeNode(
'Hire additional technical writers and expand the business',
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

Widget _buildTreeNode(String label, List<Widget> children) {
return ExpansionTile(
title: Text(label),
children: children,
);
}
}