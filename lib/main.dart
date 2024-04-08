// ignore_for_file: prefer_const_constructors

import 'package:fbapp/day24.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter 30 Widgets',
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.purple,
        ),
        home: Day24Authentication());
  }
}