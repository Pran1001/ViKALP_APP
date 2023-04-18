import 'package:flutter/material.dart';

class MarketingManagerRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Marketing Manager Roadmap'),
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
"Earn a Bachelor's Degree in Marketing or a Related Field",
[
_buildTreeNode(
'Develop an understanding of marketing principles and consumer behavior',
[],
),
_buildTreeNode(
'Gain skills in data analysis, market research, and branding',
[],
),
],
),
_buildTreeNode(
'Pursue an MBA or Other Advanced Degree',
[
_buildTreeNode(
'Deepen knowledge of business strategy and leadership',
[],
),
_buildTreeNode(
'Develop specialized expertise in areas such as digital marketing or international marketing',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply marketing principles to real-world business challenges',
[],
),
_buildTreeNode(
'Develop skills in marketing tools and technologies such as CRM software and email marketing platforms',
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
'Gain Experience in Specific Areas of Marketing',
[
_buildTreeNode(
'Develop skills in areas such as social media marketing or content marketing',
[],
),
_buildTreeNode(
'Stay up-to-date with the latest marketing trends and technologies',
[],
),
],
),
_buildTreeNode(
'Lead Marketing Campaigns and Teams',
[
_buildTreeNode(
'Develop skills in project management and cross-functional collaboration',
[],
),
_buildTreeNode(
'Create and implement marketing strategies that achieve business goals',
[],
),
],
),
_buildTreeNode(
'Obtain Professional Certifications',
[
_buildTreeNode(
'Become a certified Digital Marketer or Content Marketing Strategist',
[],
),
_buildTreeNode(
'Develop specialized expertise in areas such as Google Analytics or SEO',
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
'Advance to Director of Marketing or VP of Marketing',
[
_buildTreeNode(
'Develop skills in budgeting, forecasting, and ROI analysis',
[],
),
_buildTreeNode(
'Oversee marketing strategies for multiple products or business units',
[],
),
],
),
_buildTreeNode(
'Transition to a General Manager or Business Development Role',
[
_buildTreeNode(
'Develop skills in business strategy and P&L management',
[],
),
_buildTreeNode(
'Apply marketing expertise to identify new business opportunities and drive growth',
[],
),
],
),
_buildTreeNode(
'Become a Marketing Consultant or Start a Marketing Agency',
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