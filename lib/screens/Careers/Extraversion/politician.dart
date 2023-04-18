import 'package:flutter/material.dart';

class PoliticianRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Politician Roadmap'),
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
"Earn a Bachelor's Degree in Political Science, Law, or Related Field",
[
_buildTreeNode(
'Study political systems and public policies',
[],
),
_buildTreeNode(
'Develop critical thinking and analytical skills',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Work for political campaigns or local government offices',
[],
),
_buildTreeNode(
'Learn to communicate effectively with constituents and colleagues',
[],
),
],
),
_buildTreeNode(
'Pursue a Law Degree',
[
_buildTreeNode(
'Obtain a Juris Doctor (JD) degree',
[],
),
_buildTreeNode(
'Develop a deeper understanding of legal systems and regulations',
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
'Become Involved in Local Politics',
[
_buildTreeNode(
'Join local committees or boards',
[],
),
_buildTreeNode(
'Gain experience in community organizing and advocacy',
[],
),
],
),
_buildTreeNode(
'Gain Experience in Political Campaigns',
[
_buildTreeNode(
'Work on local, state, or national campaigns',
[],
),
_buildTreeNode(
'Develop skills in fundraising and public speaking',
[],
),
],
),
_buildTreeNode(
'Develop a Strong Personal Brand and Network',
[
_buildTreeNode(
'Establish a strong online presence',
[],
),
_buildTreeNode(
'Build relationships with influential people in your community',
[],
),
],
),
_buildTreeNode(
'Obtain a Position in Government',
[
_buildTreeNode(
'Apply for positions at the local, state, or federal level',
[],
),
_buildTreeNode(
'Develop skills in policy-making and implementation',
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
'Run for Elected Office',
[
_buildTreeNode(
'Develop a platform and campaign strategy',
[],
),
_buildTreeNode(
'Build a team of supporters and volunteers',
[],
),
],
),
_buildTreeNode(
'Become a Political Consultant or Strategist',
[
_buildTreeNode(
'Work for political candidates or organizations',
[],
),
_buildTreeNode(
'Develop skills in political analysis and messaging',
[],
),
],
),
_buildTreeNode(
'Become a Lobbyist or Advocate',
[
_buildTreeNode(
'Work for advocacy groups or lobbying firms',
[],
),
_buildTreeNode(
'Develop relationships with policymakers and stakeholders',
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