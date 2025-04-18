import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Первая вкладка: Главная',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
