import 'package:flutter/material.dart';
import 'package:learning_app/models/project.dart';

import 'detail_page.dart';

class ProjectPage extends StatelessWidget {
  final List<Project> projects = [
    Project(
      title: 'Artificial Intelligence Project',
      description: 'Project demonstrating AI algorithms',
      imageUrl: 'assets/images/signals.jpeg',
      author: 'Prof. Alice Johnson',
    ),
    Project(
      title: 'Web Development Project',
      description: 'Web application project using modern frameworks',
      imageUrl: 'assets/images/writerspanel.png',
      author: 'Dr. Bob Smith',
    ),
    // Add more projects as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Projects'),
        backgroundColor: kBlue,
      ),
      body: ListView.builder(
        itemCount: projects.length,
        itemBuilder: (context, index) {
          var project = projects[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Image.asset(
                project.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(project.title),
              subtitle: Text(project.description),
              trailing: Text('By: ${project.author}'),
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
