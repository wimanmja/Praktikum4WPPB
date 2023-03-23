import 'package:flutter/material.dart';
import 'package:newflutter/Praktikum3//detail_screenL&P.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailScreen(title: 'Flutter Demo Home Page'),
    );
  }
}