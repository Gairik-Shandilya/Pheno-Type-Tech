import 'package:flutter/material.dart';

class DietVata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vata Diet Recommendations'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Diet for Vata Dosha',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: [
                  _buildDietItem(
                    'Warm, Cooked Foods',
                    'Prefer warm, moist, and oily foods. Avoid cold, raw, or dry foods.',
                    Icons.local_dining,
                  ),
                  _buildDietItem(
                    'Sweet, Sour, Salty',
                    'Emphasize sweet, sour, and salty tastes in your meals.',
                    Icons.fastfood,
                  ),
                  _buildDietItem(
                    'Warm Beverages',
                    'Drink warm herbal teas or water with meals. Avoid cold drinks.',
                    Icons.local_cafe,
                  ),
                  // Add more diet items here...
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDietItem(String title, String description, IconData icon) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.teal),
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
