import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  final String categoryTitle;

  const CategoryPage({required this.categoryTitle, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
        backgroundColor: kBlue,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.topic, color: Colors.orange),
            title: const Text('Subcategory 1'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                    title: 'Subcategory 1',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.topic, color: Colors.green),
            title: const Text('Subcategory 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                    title: 'Subcategory 2',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.topic, color: Colors.blue),
            title: const Text('Subcategory 3'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                    title: 'Subcategory 3',
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.topic, color: Colors.purple),
            title: const Text('Subcategory 4'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailPage(
                    title: 'Subcategory 4',
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String title;

  const DetailPage({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: kBlue,
      ),
      body: Center(
        child: Text(
          'Content for $title',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

// Define your custom colors
const Color kBlue = Color(0xFF2196F3);
const Color kPink = Color.fromARGB(255, 98, 8, 35);
