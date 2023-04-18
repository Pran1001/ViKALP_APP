import 'package:flutter/material.dart';

class ArchitectRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Architect Roadmap'),
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
            'Education',
            [
              _buildTreeNode(
                'Complete a Bachelor\'s Degree in Architecture',
                [
                  _buildTreeNode(
                    'Gain a strong foundation in design, construction, history, and theory of architecture',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop skills in drawing, model making, computer-aided design (CAD), and 3D modeling software',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue a Master\'s Degree in Architecture',
                [
                  _buildTreeNode(
                    'Gain advanced knowledge and skills in specialized areas of architecture',
                    [],
                  ),
                  _buildTreeNode(
                    'Complete a thesis project or research study to demonstrate expertise in your field of interest',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Developing Skills',
            [
              _buildTreeNode(
                'Gain Practical Experience',
                [
                  _buildTreeNode(
                    'Find internship or entry-level job opportunities to gain hands-on experience in the field',
                    [],
                  ),
                  _buildTreeNode(
                    'Work with architects and other professionals to learn about design, construction, project management, and client relations',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Improve Technical Skills',
                [
                  _buildTreeNode(
                    'Stay up-to-date with new technology and tools used in the industry',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop strong CAD, 3D modeling, and visualization skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Hone Your Design Skills',
                [
                  _buildTreeNode(
                    'Practice sketching, drawing, and model making to develop your design process',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop your design style and portfolio to showcase your work',
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
                'Gain Licensure',
                [
                  _buildTreeNode(
                    'Complete the Architect Registration Examination (ARE) to become licensed as an architect',
                    [],
                  ),
                  _buildTreeNode(
                    'Meet state-specific requirements for education, experience, and examination',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Choose a Specialization',
                [
                  _buildTreeNode(
                    'Explore different areas of specialization such as urban planning, sustainable design, or historic preservation',
                    [],
                  ),
                  _buildTreeNode(
                    'Develop expertise in your area of interest to differentiate yourself from others',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Build Your Network',
                [
                  _buildTreeNode(
                    'Attend industry events and conferences to meet other architects and professionals in the field',
                    [],
                  ),
                  _buildTreeNode(
                    'Join professional organizations such as the American Institute of Architects (AIA) to access resources and opportunities for growth',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Consider Career Paths',
                [
                  _buildTreeNode(
                    'Explore career opportunities in architecture firms'
       ,[]),
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