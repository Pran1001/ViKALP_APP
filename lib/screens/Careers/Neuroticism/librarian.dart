import 'package:flutter/material.dart';

class LibrarianRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Librarian Career Roadmap'),
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
"Earn a Master's Degree in Library Science",
[
_buildTreeNode(
'Gain foundational knowledge in library science and information technology',
[],
),
_buildTreeNode(
'Develop research and analytical skills',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world library settings',
[],
),
_buildTreeNode(
'Develop skills in customer service and library technology',
[],
),
],
),
_buildTreeNode(
'Obtain Library Certification',
[
_buildTreeNode(
'Become a Certified Public Librarian (CPL) by passing the CPL Exam',
[],
),
_buildTreeNode(
'Become a Certified Academic Librarian (CAL) by passing the CAL Exam',
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
'Gain Experience in a Specialized Library Field',
[
_buildTreeNode(
'Develop expertise in areas such as law or medical libraries',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Develop Digital Literacy and Information Technology Skills',
[
_buildTreeNode(
'Stay up-to-date on emerging technologies and trends in library science',
[],
),
_buildTreeNode(
'Learn to manage digital resources and databases',
[],
),
],
),
_buildTreeNode(
'Build Management and Leadership Skills',
[
_buildTreeNode(
'Learn to lead and manage library staff and resources',
[],
),
_buildTreeNode(
'Develop skills in strategic planning and budgeting',
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
'Advance to a Senior Library Position',
[
_buildTreeNode(
'Develop skills in community outreach and engagement',
[],
),
_buildTreeNode(
'Oversee multiple library branches or departments',
[],
),
],
),
_buildTreeNode(
'Transition to a Library Consultant or Trainer Role',
[
_buildTreeNode(
'Develop skills in training and professional development',
[],
),
_buildTreeNode(
'Apply library science principles to improve organizational performance',
[],
),
],
),
_buildTreeNode(
'Become a Library Director or Administrator',
[
_buildTreeNode(
'Develop a strategic vision and plan for library services and resources',
[],
),
_buildTreeNode(
'Build relationships with community and government leaders',
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