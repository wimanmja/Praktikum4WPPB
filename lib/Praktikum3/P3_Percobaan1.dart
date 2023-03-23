import 'package:flutter/material.dart';

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

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key, required title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget> [
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: const Text(
                    "Surabaya Submarine Monument",
                    textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ),
          ],
        )
      ),
    );
  }
}