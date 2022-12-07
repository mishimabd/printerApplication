import 'package:flutter/material.dart';
import 'package:printingapplication/input.dart';
import 'package:printingapplication/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[300],
        fontFamily: 'Pop'
      ),
      debugShowCheckedModeBanner: false,
      home: const Input()
    );
  }
}

