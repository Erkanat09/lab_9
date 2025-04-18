import 'package:flutter/material.dart';
import 'package:lab_9/form_page.dart';
import 'package:lab_9/home_page.dart';
import 'start_page.dart'; // Импорт стартовой страницы

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Lab 9',
      home: StartPage(), // Стартовая страница
      routes: {
        '/register': (context) => FormPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
