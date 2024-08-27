// remedies_page.dart
import 'package:flutter/material.dart';

class RemediesPage extends StatefulWidget {
  @override
  _RemediesPageState createState() => _RemediesPageState();
}

class _RemediesPageState extends State<RemediesPage> {
  List<Map<String, String>> remedies = [
    {"name": "Turmeric Milk", "ingredients": "Turmeric, Milk, Honey", "instructions": "Mix ingredients and drink warm."},
    {"name": "Ginger Tea", "ingredients": "Ginger, Water, Honey", "instructions": "Boil ginger in water and add honey."},
  ];

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ingredientsController = TextEditingController();
  final TextEditingController _instructionsController = TextEditingController();

  void _addRemedy() {
    setState(() {
      remedies.add({
        "name": _nameController.text,
        "ingredients": _ingredientsController.text,
        "instructions": _instructionsController.text,
      });
      _nameController.clear();
      _ingredientsController.clear();
      _instructionsController.clear();
    });
    Navigator.pop(context);
  }

  void _showAddRemedyDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Remedy'),
          content: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: InputDecoration(hintText: 'Name'),
              ),
              TextField(
                controller: _ingredientsController,
                decoration: InputDecoration(hintText: 'Ingredients'),
              ),
              TextField(
                controller: _instructionsController,
                decoration: InputDecoration(hintText: 'Instructions'),
              ),
            ],
          ),
          actions: [
            TextButton(
              child: Text('Add'),
              onPressed: _addRemedy,
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
      backgroundColor: Color.fromARGB(255, 214, 204, 198),
      appBar: AppBar(
        title: Text('Remedies'),
        backgroundColor: Color.fromARGB(255, 34, 22, 5),
      ),
      body: ListView.builder(
        itemCount: remedies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(remedies[index]['name']!),
            subtitle: Text('Ingredients: ${remedies[index]['ingredients']}\nInstructions: ${remedies[index]['instructions']}'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _showAddRemedyDialog,
      ),
    );
  }
}
