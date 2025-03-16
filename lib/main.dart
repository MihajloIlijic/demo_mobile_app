import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define the routes
      routes: {
        '/': (context) => const MyHomePage(title: 'Student Management'),
        '/second': (context) => const SecondPage(),
      },
      initialRoute: '/', // Set the initial route
    );
  }
}

