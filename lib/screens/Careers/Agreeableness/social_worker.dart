
import 'package:flutter/material.dart';

class SocialWorkerRoadmap extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: Text('Social Worker Roadmap'),
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
"Earn a Bachelor's Degree in Social Work or Related Field",
[
_buildTreeNode(
'Gain foundational knowledge in social work theories and principles',
[],
),
_buildTreeNode(
'Develop skills in counseling, case management, and advocacy',
[],
),
],
),
_buildTreeNode(
"Pursue a Master's Degree in Social Work (MSW)",
[
_buildTreeNode(
'Develop advanced skills in social work practice',
[],
),
_buildTreeNode(
'Gain specialized knowledge in areas such as clinical social work, school social work, or community organization',
[],
),
],
),
_buildTreeNode(
'Gain Practical Experience through Internships or Entry-Level Roles',
[
_buildTreeNode(
'Apply theories and principles learned in coursework to real-world practice',
[],
),
_buildTreeNode(
'Develop skills in assessment, planning, and intervention',
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
'Specialize in a Specific Field or Population',
[
_buildTreeNode(
'Develop expertise in areas such as child welfare, mental health, or gerontology',
[],
),
_buildTreeNode(
'Obtain additional training or certification in specialized areas',
[],
),
],
),
_buildTreeNode(
'Pursue Professional Licensure or Certification',
[
_buildTreeNode(
'Become a Licensed Clinical Social Worker (LCSW) by passing a state licensing exam',
[],
),
_buildTreeNode(
'Obtain certification in areas such as school social work or hospice and palliative care',
[],
),
],
),
_buildTreeNode(
'Develop Skills in Program Development and Management',
[
_buildTreeNode(
'Learn to design, implement, and evaluate social service programs',
[],
),
_buildTreeNode(
'Develop skills in grant writing and fundraising',
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
'Advance to Management or Leadership Roles',
[
_buildTreeNode(
'Develop skills in supervising and mentoring other social workers',
[],
),
_buildTreeNode(
'Oversee program operations and strategic planning',
[],
),
],
),
_buildTreeNode(
'Transition to Policy or Advocacy Roles',
[
_buildTreeNode(
'Develop skills in policy analysis and advocacy',
[],
),
_buildTreeNode(
'Apply social work principles to advocate for social justice and systemic change',
[],
),
],
),
_buildTreeNode(
'Start a Social Work Private Practice',
[
_buildTreeNode(
'Develop a specialization and build a client base',
[],
),
_buildTreeNode(
'Market and grow the practice, and potentially hire additional staff',
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