import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Вторая вкладка: Статьи',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
