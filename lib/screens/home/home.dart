import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kBackground,
      body: Column(
        children: [
          CustomAppBar(leftIcon: Icons.arrow_back_ios_new_outlined, rightIcon: Icons.search,)
        ],
      )
    );
  }
}
