import 'package:flutter/material.dart';

class StudentFormCard extends StatelessWidget {
  final TextEditingController nameController;
  final TextEditingController prenameController;
  final TextEditingController ageController;
  final VoidCallback onSubmit;

  const StudentFormCard({
    super.key,
    required this.nameController,
    required this.prenameController,
    required this.ageController,
    required this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: prenameController,
              decoration: const InputDecoration(
                labelText: 'Prename',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: ageController,
              decoration: const InputDecoration(
                labelText: 'Age',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onSubmit,
              icon: const Icon(Icons.person_add),
              label: const Text('Add Student'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 