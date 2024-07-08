import 'package:flutter/material.dart';
import 'package:myapp/screens/home.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FastFeats',
      theme: ThemeData(
        primarySwatch: Colors.cyan
      ),
      home: HomeScreen(),
    );
  }
}
