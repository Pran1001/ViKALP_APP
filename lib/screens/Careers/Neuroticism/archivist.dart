import 'package:flutter/material.dart';

class ArchivistRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Archivist Roadmap'),
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
"Earn a Bachelor's Degree in Library Science or a Related Field",
[
_buildTreeNode(
"Gain foundational knowledge in library and archival sciences",
[],
),
_buildTreeNode(
'Develop research and analytical skills',
[],
),
],
),
_buildTreeNode(
"Pursue a Master's Degree in Library Science or Archival Studies",
[
_buildTreeNode(
"Develop specialized knowledge in preservation and conservation techniques",
[],
),
_buildTreeNode(
'Gain hands-on experience through internships or practicums',
[],
),
],
),
_buildTreeNode(
'Obtain Certification from the Academy of Certified Archivists (ACA)',
[
_buildTreeNode(
'Demonstrate expertise in archival practices and ethics',
[],
),
_buildTreeNode(
'Stay up-to-date with developments in the field through continuing education',
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
'Gain Experience in Archival Work',
[
_buildTreeNode(
'Learn to catalog and preserve historical documents and artifacts',
[],
),
_buildTreeNode(
'Develop skills in digitization and electronic records management',
[],
),
],
),
_buildTreeNode(
'Specialize in a Particular Type of Archive or Collection',
[
_buildTreeNode(
'Develop expertise in areas such as government records or photographic collections',
[],
),
_buildTreeNode(
'Build knowledge of the unique challenges associated with different types of materials',
[],
),
],
),
_buildTreeNode(
'Develop Communication and Outreach Skills',
[
_buildTreeNode(
'Learn to effectively communicate with diverse audiences',
[],
),
_buildTreeNode(
'Develop skills in public programming and community engagement',
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
'Advance to Senior Archivist or Collection Manager',
[
_buildTreeNode(
'Develop skills in budgeting and personnel management',
[],
),
_buildTreeNode(
'Oversee the management and growth of an archive or collection',
[],
),
],
),
_buildTreeNode(
'Transition to a Consulting or Research Role',
[
_buildTreeNode(
'Develop expertise in a particular area of archival work',
[],
),
_buildTreeNode(
'Apply archival principles to inform policy and decision-making',
[],
),
],
),
_buildTreeNode(
'Become a Department Head or Director of an Archive or Collection',
[
_buildTreeNode(
'Develop leadership and strategic planning skills',
[],
),
_buildTreeNode(
'Shape the direction and priorities of an archive or collection',
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