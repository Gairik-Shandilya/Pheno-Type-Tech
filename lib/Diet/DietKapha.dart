import 'package:flutter/material.dart';

class DietKapha extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Recommendations - Kapha'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.green[50],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Foods to Include:',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '• Warm, light, and spicy foods\n• Astringent, bitter, and pungent tastes\n• Leafy greens and vegetables\n• Legumes and grains',
              style: TextStyle(fontSize: 18.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Foods to Avoid:',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '• Heavy, oily, and cold foods\n• Sweet, sour, and salty tastes\n• Dairy products\n• Processed foods',
              style: TextStyle(fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
