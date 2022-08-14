import 'package:flutter/material.dart';
import 'package:quran_apps/page/myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    backgroundColor: Color.fromARGB(255, 70, 70, 70),
      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      
    );
  }
}

