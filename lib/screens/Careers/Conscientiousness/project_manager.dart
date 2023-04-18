import 'package:flutter/material.dart';

class ProjectManagerRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Project Manager Roadmap'),
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
                'Earn a Bachelor\'s Degree in a Related Field',
                [
                  _buildTreeNode(
                    'Gain foundational knowledge in project management principles',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop communication and leadership skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue a Project Management Certification',
                [
                  _buildTreeNode(
                    'Become a Project Management Professional (PMP) by passing the PMP Exam',
                    [],
                  ),
                  _buildTreeNode(
                    'Become a Certified Associate in Project Management (CAPM) by passing the CAPM Exam',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Gain Practical Experience through Internships or Entry-Level Roles',
                [
                  _buildTreeNode(
                    'Apply principles learned in coursework to real-world projects',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in project management software',
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
                'Gain Experience Managing Projects',
                [
                  _buildTreeNode(
                    'Develop skills in planning and scheduling',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to manage budgets and timelines',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Specific Industry or Type of Project',
                [
                  _buildTreeNode(
                    'Develop expertise in areas such as construction or software development',
                    [],
                  ),
                  _buildTreeNode(
                    'Obtain additional training or certification in specialized areas',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Become a Certified Scrum Master (CSM)',
                [
                  _buildTreeNode(
                    'Learn to apply Agile principles to project management',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in facilitating team collaboration and communication',
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
                'Advance to Senior Project Manager or Program Manager',
                [
                  _buildTreeNode(
                    'Develop skills in strategic planning and risk management',
                    [],
                  ),
                  _buildTreeNode(
                    'Oversee multiple projects or programs simultaneously',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Transition to a Consulting or Business Development Role',
                [
                  _buildTreeNode(
                    'Develop skills in client management and business development',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply project management principles to improve organizational performance',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Start a Project Management Consulting Firm or Business',
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
