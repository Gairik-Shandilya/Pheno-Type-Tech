import 'package:flutter/material.dart';

class YogaVata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vata Yoga Practices'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Yoga for Vata Dosha',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  _buildYogaPose(
                    'Mountain Pose (Tadasana)',
                    'Helps in grounding and calming the restless Vata mind.',
                    'assets/mountain_pose.png',
                  ),
                  _buildYogaPose(
                    'Tree Pose (Vrikshasana)',
                    'Improves balance and steadiness.',
                    'assets/tree_pose.png',
                  ),
                  _buildYogaPose(
                    'Warrior Pose (Virabhadrasana)',
                    'Strengthens the body and improves stability.',
                    'assets/warrior_pose.png',
                  ),
                  // Add more yoga poses here...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildYogaPose(String title, String description, String imagePath) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        subtitle: Text(description),
      ),
    );
  }
}
