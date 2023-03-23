import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 1;
  String _text = "ganjil";
  String bilprim = "Prima : ";
  String bilx3 = "Kelipatan 3 : ";
  String bilgenap = "genap : ";
  String bilganjil = "ganjil : ";
  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter>10){
        _counter = 1;
      }
      if(_counter%2==0){
        _text = "genap";
      } else {
        _text = "ganjil";
      }
      if(_counter%3 == 0) {
        bilx3 += "$_counter, ";
      }
      if(prima(_counter)){
        bilprim += " $_counter";
      }
      if(_counter % 2 == 0){
        bilgenap += "$_counter, ";
      }
      if(_counter % 2 != 0){
        bilganjil += "$_counter, ";
      }
    });
  }
  bool prima(int bil){
    if(bil == 1) {
      return false;
    }
    for(int i=1; i<bil-1; i++){
      if(bil%(i+1)==0){
        return false;
      }
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tugas praktikum"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this banyak kali :',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$bilprim',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$bilx3',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$bilgenap',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              '$bilganjil',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              _text,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}