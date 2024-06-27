import 'package:flutter/material.dart';
import 'package:learning_app/pages/login_page.dart';
import 'package:learning_app/pages/home_page.dart';
import 'package:learning_app/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LEARNING APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome':(context) =>  const WelcomePage(),
        '/login': (context) => const LoginPage(),
        '/home': (context) => const HomePage(userName: '',),
      },
    );
  }
}
