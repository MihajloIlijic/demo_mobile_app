import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/second_page.dart';
import 'pages/layout_demo_page.dart';

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
      routes: {
        '/': (context) => const MyHomePage(title: 'Student Management'),
        '/second': (context) => const SecondPage(),
        '/layout': (context) => const LayoutDemoPage(),
      },
      initialRoute: '/',
    );
  }
}

