import 'package:flutter/material.dart';

class ScientistRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scientist Roadmap'),
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
                'Complete a Bachelor\'s Degree',
                [
                  _buildTreeNode(
                    'Choose a major in a scientific field such as biology, chemistry, physics, or geology',
                    [],
                  ),
                  _buildTreeNode(
                    'Take courses in math and statistics to develop strong quantitative skills',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Pursue Graduate Studies',
                [
                  _buildTreeNode(
                    'Apply to PhD programs in your field of interest',
                    [],
                  ),
                  _buildTreeNode(
                    'Work with a research advisor to develop a thesis project and conduct original research',
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
                'Improve Your Scientific Writing',
                [
                  _buildTreeNode(
                    'Practice writing scientific papers, grant proposals, and other technical documents',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn how to present your research findings clearly and effectively to different audiences',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Develop Strong Analytical Skills',
                [
                  _buildTreeNode(
                    'Learn how to collect, analyze, and interpret data using statistical software and other tools',
                    [],
                  ),
                  _buildTreeNode(
                    'Practice critical thinking and problem-solving to develop creative solutions to scientific questions',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Stay Up-to-Date',
                [
                  _buildTreeNode(
                    'Read scientific journals and attend conferences to learn about new discoveries and advances in your field',
                    [],
                  ),
                  _buildTreeNode(
                    'Network with other scientists and researchers to build relationships and collaborations',
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
                'Apply for Postdoctoral Positions',
                [
                  _buildTreeNode(
                    'Find opportunities to work as a postdoctoral researcher in a lab or research institution',
                    [],
                  ),
                  _buildTreeNode(
                    'Gain additional research experience and develop new skills to prepare for a career in academia or industry',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Consider Career Options',
                [
                  _buildTreeNode(
                    'Explore career opportunities in academia, government, industry, and nonprofit organizations',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn about the different career paths available to scientists, such as research scientist, science writer, or science policy advisor',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Apply for Jobs',
                [
                  _buildTreeNode(
                    'Prepare a strong CV or resume and cover letter',
                    [],
                  ),
                  _buildTreeNode(
                    'Apply for jobs that match your skills and interests',
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
