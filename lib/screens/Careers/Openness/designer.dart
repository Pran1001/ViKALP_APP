import 'package:flutter/material.dart';

class DesignerRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Designer Roadmap'),
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
            'Education and Skills',
            [
              _buildTreeNode(
                'Develop a Strong Foundation',
                [
                  _buildTreeNode(
                    'Study the fundamentals of design, including color theory, typography, and layout',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to use design software such as Adobe Creative Suite',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Specialize in a Discipline',
                [
                  _buildTreeNode(
                    'Explore different design disciplines such as graphic design, web design, or product design',
                    [],
                  ),
                  _buildTreeNode(
                    'Choose one or more disciplines to specialize in',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Continuously Develop Your Skills',
                [
                  _buildTreeNode(
                    'Practice regularly to improve your technique',
                    [],
                  ),
                  _buildTreeNode(
                    'Take classes or workshops to learn new skills and stay up to date with the latest trends and technologies',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Building a Portfolio',
            [
              _buildTreeNode(
                'Create a Consistent Body of Work',
                [
                  _buildTreeNode(
                    'Develop a style that reflects your unique perspective and vision',
                    [],
                  ),
                  _buildTreeNode(
                    'Create a portfolio of your best work that demonstrates your skills and aesthetic',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Promote Your Work',
                [
                  _buildTreeNode(
                    'Showcase your work on social media and design websites',
                    [],
                  ),
                  _buildTreeNode(
                    'Enter design contests and exhibitions to gain exposure',
                    [],
                  ),
                  _buildTreeNode(
                    'Reach out to design agencies or studios who can help promote your work',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Career Paths',
            [
              _buildTreeNode(
                'Graphic Designer',
                [
                  _buildTreeNode(
                    'Design visual elements for print and digital media',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for advertising agencies, design firms, or in-house design teams',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Web Designer',
                [
                  _buildTreeNode(
                    'Design and develop websites and user interfaces',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for web design agencies, tech companies, or as a freelancer',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Product Designer',
                [
                  _buildTreeNode(
                    'Design physical products such as furniture, appliances, or consumer electronics',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for product design firms or in-house design teams for companies',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'UX/UI Designer',
                [
                  _buildTreeNode(
                    'Design user experiences and interfaces for digital products such as apps and websites',
                    [],
                  ),
                  _buildTreeNode(
                    'Work for tech companies, startups, or design agencies',
                    [],
                  ),
                ],
              ),
            ],
          )
        ]
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