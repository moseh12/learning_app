import 'package:flutter/material.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Courses'),
        backgroundColor: kBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'Enrolled Courses',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kBlue,
              ),
            ),
            SizedBox(height: 10),
            EnrolledCourseTile(courseName: 'Introduction to Programming'),
            EnrolledCourseTile(courseName: 'Data Structures and Algorithms'),
            SizedBox(height: 20),
            Text(
              'Completed Courses',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kBlue,
              ),
            ),
            SizedBox(height: 10),
            CompletedCourseTile(courseName: 'Operating Systems'),
            CompletedCourseTile(courseName: 'Database Management Systems'),
          ],
        ),
      ),
    );
  }
}

class EnrolledCourseTile extends StatelessWidget {
  final String courseName;

  const EnrolledCourseTile({required this.courseName, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.book, color: kPink),
        title: Text(courseName),
        trailing: ElevatedButton(
          onPressed: () {
            // Navigate to course details page or show course details
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetailPage(courseName: courseName),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kBlue,
          ),
          child: const Text('View'),
        ),
      ),
    );
  }
}

class CompletedCourseTile extends StatelessWidget {
  final String courseName;

  const CompletedCourseTile({required this.courseName, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: const Icon(Icons.check_circle, color: kGreen),
        title: Text(courseName),
        trailing: ElevatedButton(
          onPressed: () {
            // Navigate to course details page or show course details
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CourseDetailPage(courseName: courseName),
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: kBlue,
          ),
          child: const Text('View'),
        ),
      ),
    );
  }
}

class CourseDetailPage extends StatelessWidget {
  final String courseName;

  const CourseDetailPage({required this.courseName, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
        backgroundColor: kBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              courseName,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: kBlue,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "This is the detailed content for the course $courseName. Here you will find all the necessary information and resources to help you learn more about this topic.",
              style: const TextStyle(fontSize: 16, height: 1.5),
            ),
            const SizedBox(height: 20),
            const Text(
              "Course Outline:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kPink,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Introduction\n2. Basics\n3. Advanced Topics\n4. Conclusion",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}

// Define your custom colors
const Color kBlue = Color(0xFF2196F3);
const Color kPink = Color.fromARGB(255, 98, 8, 35);
const Color kGreen = Color(0xFF4CAF50);
