import 'package:flutter/material.dart';

import '../core /custom-widgets/student_form_card.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _nameController = TextEditingController();
  final _prenameController = TextEditingController();
  final _ageController = TextEditingController();

  List<Map<String, dynamic>> students = [];

  void _addStudent() {
    if (_nameController.text.isNotEmpty && 
        _prenameController.text.isNotEmpty && 
        _ageController.text.isNotEmpty) {
      setState(() {
        students.add({
          'name': _nameController.text,
          'prename': _prenameController.text,
          'age': _ageController.text,
        });
        
        _nameController.clear();
        _prenameController.clear();
        _ageController.clear();
      });
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _prenameController.dispose();
    _ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: const Icon(Icons.grid_view),
            onPressed: () {
              Navigator.pushNamed(context, '/layout');
            },
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            StudentFormCard(
              nameController: _nameController,
              prenameController: _prenameController,
              ageController: _ageController,
              onSubmit: _addStudent,
            ),
            const SizedBox(height: 24),
            Text(
              'Students List',
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index) {
                  final student = students[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: const CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text('${student['prename']} ${student['name']}'),
                      subtitle: Text('Age: ${student['age']}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
