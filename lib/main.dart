import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return  const MaterialApp(
        title: "Food Delivery App",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // appBar: AppBar(
          //   // backgroundColor: Colors.black.withOpacity(0.9),
          //   leading: const Icon(Icons.arrow_back),
          //   actions: const [
          //     Icon(Icons.search)
          //   ],
          // ),
          body: HomePage(),
        )
    );
  }
}

