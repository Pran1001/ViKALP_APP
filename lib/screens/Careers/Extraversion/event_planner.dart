import 'package:flutter/material.dart';

class EventPlannerRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Event Planner Roadmap'),
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
"Earn a Bachelor's Degree in Hospitality, Communications or Related Field",
[
_buildTreeNode(
'Develop foundational knowledge in event planning',
[],
),
_buildTreeNode(
'Gain communication and leadership skills',
[],
),
],
),
_buildTreeNode(
'Complete an Internship or Entry-Level Position',
[
_buildTreeNode(
'Apply principles learned in coursework to real-world event planning',
[],
),
_buildTreeNode(
'Gain practical experience with event planning software and tools',
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
'Gain Experience Planning and Coordinating Events',
[
_buildTreeNode(
'Develop skills in budgeting and negotiating with vendors',
[],
),
_buildTreeNode(
'Learn to coordinate logistics and manage event timelines',
[],
),
],
),
_buildTreeNode(
'Specialize in a Specific Type of Event Planning',
[
_buildTreeNode(
'Develop expertise in areas such as corporate events or weddings',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Build and Maintain a Network of Vendors and Suppliers',
[
_buildTreeNode(
'Develop relationships with caterers, florists, and other event vendors',
[],
),
_buildTreeNode(
'Negotiate favorable rates and maintain a database of trusted suppliers',
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
'Advance to Senior Event Planner or Event Manager',
[
_buildTreeNode(
'Develop skills in managing larger and more complex events',
[],
),
_buildTreeNode(
'Hire and train junior event planners',
[],
),
],
),
_buildTreeNode(
'Transition to a Consulting or Training Role',
[
_buildTreeNode(
'Develop skills in coaching and training other event planners',
[],
),
_buildTreeNode(
'Provide consulting services to organizations planning their own events',
[],
),
],
),
_buildTreeNode(
'Start an Event Planning Business',
[
_buildTreeNode(
'Develop a business plan and secure financing',
[],
),
_buildTreeNode(
'Build a client base and market the business',
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