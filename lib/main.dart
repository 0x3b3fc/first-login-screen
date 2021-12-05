import 'package:flutter/material.dart';
import 'package:login_screen/counter_screen.dart';
import 'package:login_screen/messenger_screen.dart';
import 'package:login_screen/users_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
