import 'package:flutter/material.dart';

class DietPitta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Recommendations - Pitta'),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.orange[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Foods to Include:',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange[800],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '• Sweet, bitter, and astringent tastes\n• Cooling foods\n• Fresh fruits and vegetables\n• Dairy products',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Foods to Avoid:',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.orange[800],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '• Spicy, sour, and salty foods\n• Fried and oily foods\n• Fermented foods\n• Excessive caffeine and alcohol',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
