// pages/fourth_page.dart
import 'package:flutter/material.dart';
import 'package:lab_9/shared_preferences_helper.dart';

class FourthPage extends StatefulWidget {
  @override
  _FourthPageState createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  String fullName = '';
  String email = '';
  String phone = '';

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() async {
    final data = await SharedPreferencesHelper.getUserData();
    setState(() {
      fullName = data['fullName']!;
      email = data['email']!;
      phone = data['phone']!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Профиль')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ФИО: $fullName', style: TextStyle(fontSize: 18)),
            Text('Email: $email', style: TextStyle(fontSize: 18)),
            Text('Телефон: $phone', style: TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
