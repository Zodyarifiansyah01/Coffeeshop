import 'package:flutter/material.dart';
import 'package:project_baru/page1.dart';
import 'package:project_baru/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Page(),
    );
  }
}
