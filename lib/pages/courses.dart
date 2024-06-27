import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Courses'),
        backgroundColor: kBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'Computer Science Department',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kBlue,
              ),
            ),
            SizedBox(height: 10),
            CourseTile(courseName: 'Introduction to Programming'),
            CourseTile(courseName: 'Data Structures and Algorithms'),
            CourseTile(courseName: 'Operating Systems'),
            CourseTile(courseName: 'Database Management Systems'),
            CourseTile(courseName: 'Computer Networks'),
            SizedBox(height: 20),
            Text(
              'Science Department',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kBlue,
              ),
            ),
            SizedBox(height: 10),
            CourseTile(courseName: 'Physics 101'),
            CourseTile(courseName: 'Chemistry 101'),
            CourseTile(courseName: 'Biology 101'),
            CourseTile(courseName: 'Mathematics 101'),
            CourseTile(courseName: 'Environmental Science'),
          ],
        ),
      ),
    );
  }
}

class CourseTile extends StatelessWidget {
  final String courseName;

  const CourseTile({required this.courseName, super.key});

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
          child: const Text('Enroll'),
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
