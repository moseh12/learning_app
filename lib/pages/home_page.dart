import 'package:flutter/material.dart';
import 'package:learning_app/pages/assignment.dart';
import 'package:learning_app/pages/login_page.dart';
import 'package:learning_app/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning App'),
        backgroundColor: kBlue,
      ),

      ///
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: kBlue,
              ),
              child: Text(
                'Welcome to Learning App',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text('Categories'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.cached),
              title: const Text('Lectures'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_task),
              title: const Text('Quizzes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.hotel_class),
              title: const Text('Syllabus'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CategoryPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello, Muneer!",
              style: const TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "What do you want to learn today?",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  CategoryCard(
                    title: "Online courses",
                    icon: Icons.calculate,
                    color: Colors.white,
                    image: 'assets/images/cources.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Assignments",
                    icon: Icons.science,
                    color: Colors.white,
                    image: 'assets/images/ass.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  AssignmentPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Books",
                    icon: Icons.history_edu,
                    color: Colors.white,
                    image: 'assets/images/book.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Quizzes",
                    icon: Icons.language,
                    color: Colors.white,
                    image: 'assets/images/quiz.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CategoryPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Sample Exams",
                    icon: Icons.language,
                    color: Colors.white,
                    image: 'assets/images/sample.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  SampleExamPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    title: "Projects",
                    icon: Icons.language,
                    color: Colors.white,
                    image: 'assets/images/project.png',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProjectPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'My Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;
  final String image;

  const CategoryCard({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(image),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// Define your custom colors
const Color kBlue = Color(0xFF2196F3);
const Color kPink = Color.fromARGB(255, 98, 8, 35);

// Example placeholder for CategoryPage
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            'Our courses',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: kBlue,
        ),
        body: const Column(
          children: [
            CourceContainer(
                image: 'assets/images/ai.png',
                courcename: 'Artificial intelligence',
                authorname: 'Muneer Hasan'),
            CourceContainer(
                image: 'assets/images/web.png',
                courcename: 'Web development ',
                authorname: 'Moses Ochieng'),
            CourceContainer(
                image: 'assets/images/cyber.png',
                courcename: 'Cybersecurity',
                authorname: 'Muneer Hasan'),
            CourceContainer(
                image: 'assets/images/app.png',
                courcename: 'App development ',
                authorname: 'Muneer Hasan'),
            CourceContainer(
                image: 'assets/images/st.png',
                courcename: 'Software testing ',
                authorname: 'Muneer Hasan'),
            CourceContainer(
                image: 'assets/images/ml.png',
                courcename: 'Machine learning  ',
                authorname: 'Muneer Hasan'),
          ],
        ));
  }
}

class CourceContainer extends StatefulWidget {
  final String image;
  final String courcename;
  final String authorname;

  const CourceContainer({
    super.key,
    required this.image,
    required this.courcename,
    required this.authorname,
  });

  @override
  State<CourceContainer> createState() => _CourceContainerState();
}

class _CourceContainerState extends State<CourceContainer> {
  double _currentSliderValue = 30.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
      child: Card(
        elevation: 10,
        child: Row(
          children: [
            Image(
              image: AssetImage(widget.image),
              width: MediaQuery.sizeOf(context).width * 0.4,
            ),
            Column(
              children: [
                Text(
                  widget.courcename,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Row(
                  children: [const Icon(Icons.person), Text(widget.authorname)],
                ),
                Row(
                  children: [
                    Slider(
                      activeColor: Colors.yellow,
                      min: 0,
                      max: 100,
                      value: _currentSliderValue,
                      onChanged: (value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    const Text('21/25')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
