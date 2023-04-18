import 'package:flutter/material.dart';

class SalesRepRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Sales Representative Roadmap'),
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
"Earn a Bachelor's Degree in a Related Field",
[
_buildTreeNode(
'Gain foundational knowledge in sales principles',
[],
),
_buildTreeNode(
'Develop communication and interpersonal skills',
[],
),
_buildTreeNode(
'Acquire basic business skills',
[],
),
],
),
_buildTreeNode(
'Participate in Sales Training Programs',
[
_buildTreeNode(
'Acquire specific product and industry knowledge',
[],
),
_buildTreeNode(
'Develop and refine sales techniques',
[],
),
_buildTreeNode(
'Practice negotiating and closing deals',
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
'Work in Sales Support or Customer Service Roles',
[
_buildTreeNode(
'Assist with sales proposals and contracts',
[],
),
_buildTreeNode(
'Resolve customer issues and complaints',
[],
),
],
),
_buildTreeNode(
'Obtain a Junior Sales Role',
[
_buildTreeNode(
'Shadow senior sales representatives',
[],
),
_buildTreeNode(
'Develop lead generation and qualification skills',
[],
),
_buildTreeNode(
'Manage smaller accounts',
[],
),
],
),
_buildTreeNode(
'Become a Senior Sales Representative',
[
_buildTreeNode(
'Develop advanced negotiation skills',
[],
),
_buildTreeNode(
'Build and maintain strong customer relationships',
[],
),
_buildTreeNode(
'Generate and manage large sales opportunities',
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
'Advance to Sales Management',
[
_buildTreeNode(
'Develop leadership skills',
[],
),
_buildTreeNode(
'Recruit and train new sales representatives',
[],
),
_buildTreeNode(
'Set sales goals and manage sales operations',
[],
),
],
),
_buildTreeNode(
'Transition to Business Development or Account Management',
[
_buildTreeNode(
'Develop skills in strategic planning and account management',
[],
),
_buildTreeNode(
'Expand existing customer relationships and identify new business opportunities',
[],
),
],
),
_buildTreeNode(
'Become an Entrepreneur',
[
_buildTreeNode(
'Develop a product or service to sell',
[],
),
_buildTreeNode(
'Create a sales and marketing plan',
[],
),
_buildTreeNode(
'Build and manage a sales team',
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