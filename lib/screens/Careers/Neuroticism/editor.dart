
import 'package:flutter/material.dart';

class EditorRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Editor Roadmap'),
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
"Earn a Bachelor's Degree in Journalism, Communications, or English",
[
_buildTreeNode(
'Develop strong writing skills',
[],
),
_buildTreeNode(
'Gain experience in various forms of journalism and communication, such as print, broadcast, and online',
[],
),
_buildTreeNode(
'Learn editing and proofreading skills',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world editing and writing projects',
[],
),
_buildTreeNode(
'Develop skills in editing software',
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
'Specialize in a Specific Industry or Type of Writing',
[
_buildTreeNode(
'Develop expertise in areas such as business, science, or entertainment',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Become Familiar with Multiple Editing Styles and Guidelines',
[
_buildTreeNode(
'Learn Associated Press (AP) style, Chicago Manual of Style, and other commonly used styles',
[],
),
_buildTreeNode(
'Stay up-to-date on changes and updates to editing guidelines',
[],
),
],
),
_buildTreeNode(
'Develop Soft Skills',
[
_buildTreeNode(
'Communicate effectively with writers and other editors',
[],
),
_buildTreeNode(
'Collaborate and work well in a team environment',
[],
),
_buildTreeNode(
'Manage time and prioritize tasks efficiently',
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
'Advance to Senior Editor or Editorial Director',
[
_buildTreeNode(
'Oversee the editorial process and manage teams of writers and editors',
[],
),
_buildTreeNode(
'Develop strategic plans for content and publication',
[],
),
],
),
_buildTreeNode(
'Transition to a Writing or Content Strategy Role',
[
_buildTreeNode(
'Develop skills in writing and content creation',
[],
),
_buildTreeNode(
'Apply editing skills to content strategy and planning',
[],
),
],
),
_buildTreeNode(
'Start a Freelance Editing Business',
[
_buildTreeNode(
'Develop a client base and establish a reputation as a skilled editor',
[],
),
_buildTreeNode(
'Manage finances and develop a business plan',
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