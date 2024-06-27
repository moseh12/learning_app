import 'package:flutter/material.dart';
import 'package:learning_app/models/assignment.dart';

import 'detail_page.dart';

class AssignmentPage extends StatelessWidget {
  final List<Assignment> assignments = [
    Assignment(
      title: 'Data Structures Assignment',
      description: 'Assignment on implementing data structures',
      imageUrl: 'assets/images/assignment_1.jpg',
      author: 'Prof. Emily Brown',
    ),
    Assignment(
      title: 'Database Design Assignment',
      description: 'Assignment on designing databases',
      imageUrl: 'assets/images/assignment_2.jpg',
      author: 'Dr. Michael Green',
    ),
    // Add more assignments as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assignments'),
      backgroundColor: kBlue,
      ),
      body: ListView.builder(
        itemCount: assignments.length,
        itemBuilder: (context, index) {
          var assignment = assignments[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Image.asset(
                assignment.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(assignment.title),
              subtitle: Text(assignment.description),
              trailing: Text('By: ${assignment.author}'),
              onTap: () {
                // Handle onTap action if needed
              },
            ),
          );
        },
      ),
    );
  }
}
