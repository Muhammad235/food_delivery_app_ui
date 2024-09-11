import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Flutter App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black.withOpacity(0.9),
            title: const Text(
              "Title",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: const Text("hello"),
        )
    );
  }
}

