import 'package:flutter/material.dart';

class WriterRoadmap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Writer Roadmap'),
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
                'Bachelor\'s Degree in English or Creative Writing',
                [
                  _buildTreeNode(
                    'Take courses in writing, literature, and publishing',
                    [],
                  ),
                  _buildTreeNode(
                    'Join writing clubs and workshops',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Master\'s Degree in Writing or Journalism (Optional)',
                [
                  _buildTreeNode(
                    'Develop advanced writing skills',
                    [],
                  ),
                  _buildTreeNode(
                    'Explore different writing genres',
                    [],
                  ),
                ],
              ),
            ],
          ),
          _buildTreeNode(
            'Professional Development',
            [
              _buildTreeNode(
                'Internships or Entry-Level Jobs',
                [
                  _buildTreeNode(
                    'Build a portfolio of writing samples',
                    [],
                  ),
                  _buildTreeNode(
                    'Get experience in different writing styles and genres',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Freelance Writing',
                [
                  _buildTreeNode(
                    'Build a network of clients',
                    [],
                  ),
                  _buildTreeNode(
                    'Learn to market and sell your writing',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Publishing a Book',
                [
                  _buildTreeNode(
                    'Write a manuscript and get feedback from beta readers',
                    [],
                  ),
                  _buildTreeNode(
                    'Edit and revise the manuscript',
                    [],
                  ),
                  _buildTreeNode(
                    'Find a literary agent and submit the manuscript',
                    [],
                  ),
                  _buildTreeNode(
                    'Negotiate a book deal and work with an editor and publisher',
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
                'Fiction Writing',
                [
                  _buildTreeNode(
                    'Write novels or short stories in various genres',
                    [],
                  ),
                  _buildTreeNode(
                    'Self-publish or work with a traditional publisher',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Non-Fiction Writing',
                [
                  _buildTreeNode(
                    'Write articles, essays, and memoirs',
                    [],
                  ),
                  _buildTreeNode(
                    'Pitch ideas to magazines, newspapers, and websites',
                    [],
                  ),
                ],
              ),
              _buildTreeNode(
                'Technical Writing',
                [
                  _buildTreeNode(
                    'Write user manuals, instruction guides, and reports',
                    [],
                  ),
                  _buildTreeNode(
                    'Work in industries such as technology, healthcare, or finance',
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
