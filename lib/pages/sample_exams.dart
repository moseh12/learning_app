import 'package:flutter/material.dart';
import 'package:learning_app/models/sample_exam.dart';

import 'detail_page.dart';

class SampleExamPage extends StatelessWidget {
  final List<SampleExam> exams = [
    SampleExam(
      title: 'Computer Science Basics',
      description: 'Fundamental concepts in computer science',
      imageUrl: 'assets/images/sample_exam_1.jpg',
      author: 'Prof. John Doe',
    ),
    SampleExam(
      title: 'Data Structures and Algorithms',
      description: 'Exam covering various data structures and algorithms',
      imageUrl: 'assets/images/sample_exam_2.jpg',
      author: 'Dr. Jane Smith',
    ),
    // Add more sample exams as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Exams'),
        backgroundColor: kBlue,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          var exam = exams[index];
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Image.asset(
                exam.imageUrl,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
              title: Text(exam.title),
              subtitle: Text(exam.description),
              trailing: Text('By: ${exam.author}'),
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
