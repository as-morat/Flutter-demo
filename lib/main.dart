import 'package:flutter/material.dart';
import 'package:self_learn2/demo1/demo1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MyDemo1()),
    );
  }
}
