import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class MenuType extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;

  const MenuType(
      {super.key,
      required this.selected,
      required this.callback,
      required this.restaurant});

  @override
  Widget build(BuildContext context) {
    final menuType = restaurant.menu.keys.toList();

    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () => callback(index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                    color: selected == index ? kPrimaryColor : Colors.white
              ),
              child: Text(menuType[index], style: const TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          separatorBuilder: (_, index) => const SizedBox(width: 20,),
          itemCount: menuType.length),

      // child: ListView(
      //   // padding: const EdgeInsets.only(left: 10),
      //   padding: const EdgeInsets.symmetric(horizontal: 25),
      //   scrollDirection: Axis.horizontal,
      //
      //   children: [
      //     listView(),
      //     listView(),
      //   ],
      // ),
    );
  }
}

// Container listView() {
//
//   return Container(
//     margin: const EdgeInsets.only(right: 10),
//     padding: const EdgeInsets.all(10),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(10),
//       color: kPrimaryColor,
//     ),
//     child: const Center(child: Text("List 1")),
//   );
// }
