import 'package:flutter/material.dart';

class YogaPitta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga Poses - Pitta'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.orange[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Recommended Yoga Poses:',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange[800],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '• Forward bends\n• Twists\n• Cooling pranayama\n• Meditation and relaxation',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
