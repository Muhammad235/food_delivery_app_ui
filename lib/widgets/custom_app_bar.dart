import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData leftIcon;
  final IconData rightIcon;
  final Function? leftCallback;

  const CustomAppBar(
      {required this.leftIcon,
      required this.rightIcon,
      this.leftCallback,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap:
              leftCallback != null ? () => leftCallback!() : null
            ,
            child: _buildIcon(leftIcon)
          ),
          _buildIcon(rightIcon)
        ],
      ),
    );
  }
}

Container _buildIcon(IconData icon){
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Icon(icon),
  );
}

