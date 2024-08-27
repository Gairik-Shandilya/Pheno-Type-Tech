
import 'package:flutter/material.dart';

class AyurvedicCentersPage extends StatefulWidget {
  @override
  _AyurvedicCentersPageState createState() => _AyurvedicCentersPageState();
}

class _AyurvedicCentersPageState extends State<AyurvedicCentersPage> {
  List<Map<String, String>> centers = [
    {"name": "Ayurveda Wellness Center", "location": "Mumbai", "contact": "123-456-7890"},
    {"name": "Healing Touch Ayurveda", "location": "Bangalore", "contact": "234-567-8901"},
    {"name": "Nature's Path Ayurveda", "location": "Delhi", "contact": "345-678-9012"},
  ];

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();

  void _addCenter() {
    setState(() {
      centers.add({
        "name": _nameController.text,
        "location": _locationController.text,
        "contact": _contactController.text,
      });
      _nameController.clear();
      _locationController.clear();
      _contactController.clear();
    });
    Navigator.pop(context);
  }

  void _showAddCenterDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Ayurvedic Center'),
          content: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Name'),
              ),
              TextField(
                controller: _locationController,
                decoration: InputDecoration(hintText: 'Location'),
              ),
              TextField(
                controller: _contactController,
                decoration: InputDecoration(hintText: 'Contact'),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Add'),
              onPressed: _addCenter,
            ),
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ayurvedic Centers'),
        backgroundColor: Color.fromARGB(255, 17, 11, 4),
      ),
      backgroundColor: Color.fromARGB(255, 214, 204, 198),
      body: ListView.builder(
        itemCount: centers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(centers[index]['name']!),
            subtitle: Text('${centers[index]['location']} - ${centers[index]['contact']}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _showAddCenterDialog,
      ),
    );
  }
}
