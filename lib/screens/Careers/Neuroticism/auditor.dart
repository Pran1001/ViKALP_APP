import 'package:flutter/material.dart';

class AuditorRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Auditor Roadmap'),
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
'Education and Certification',
[
_buildTreeNode(
'Earn a Bachelor’s Degree in Accounting or Finance',
[
_buildTreeNode(
'Gain foundational knowledge in accounting principles',
[],
),
_buildTreeNode(
'Develop analytical and critical thinking skills',
[],
),
],
),
_buildTreeNode(
'Obtain Certified Public Accountant (CPA) License',
[
_buildTreeNode(
'Meet state-specific requirements for CPA licensure',
[],
),
_buildTreeNode(
'Pass the Uniform CPA Exam',
[],
),
],
),
_buildTreeNode(
'Complete Continuing Professional Education (CPE)',
[
_buildTreeNode(
'Stay current with changing laws and regulations',
[],
),
_buildTreeNode(
'Develop specialized knowledge in areas such as tax law or fraud detection',
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
'Gain Experience in Public Accounting',
[
_buildTreeNode(
'Develop skills in auditing financial statements',
[],
),
_buildTreeNode(
'Learn to evaluate internal controls and assess risk',
[],
),
],
),
_buildTreeNode(
'Specialize in a Specific Industry or Type of Audit',
[
_buildTreeNode(
'Develop expertise in areas such as healthcare or government auditing',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Develop Strong Interpersonal and Communication Skills',
[
_buildTreeNode(
'Work effectively with clients and team members',
[],
),
_buildTreeNode(
'Write clear and concise audit reports',
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
'Advance to Managerial or Directorial Roles',
[
_buildTreeNode(
'Develop leadership and management skills',
[],
),
_buildTreeNode(
'Oversee multiple audit engagements and teams',
[],
),
],
),
_buildTreeNode(
'Transition to a Consulting or Advisory Role',
[
_buildTreeNode(
'Provide advisory services to clients such as risk management or regulatory compliance',
[],
),
_buildTreeNode(
'Develop specialized expertise in a specific area such as fraud investigation',
[],
),
],
),
_buildTreeNode(
'Start an Accounting or Consulting Firm',
[
_buildTreeNode(
'Develop a client base and reputation for quality services',
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