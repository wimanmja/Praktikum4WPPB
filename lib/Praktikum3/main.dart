import 'package:flutter/material.dart';
import 'package:newflutter/Praktikum3/main_screen.dart';
import 'package:newflutter/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => DoneTourismProvider(),
      child: MaterialApp(
        title: 'Contacs',
        theme: ThemeData(),
        home: const MainScreen(),
      ),
    );
  }
}