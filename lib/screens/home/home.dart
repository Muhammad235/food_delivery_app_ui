import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/widget/menu_type.dart';
import 'package:food_delivery_app/screens/home/widget/restaurant_info.dart';
import '../../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final restaurant = Restaurant.generateRestaurant();
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackground,
        body: Column(
          children: [
            const CustomAppBar(
              leftIcon: Icons.arrow_back_ios_new_outlined,
              rightIcon: Icons.search,
            ),
            const RestaurantInfo(),
            MenuType(
                selected: selected,
                callback:  (int index) => setState(() {
                   selected = index;
                   // pageController.jumpToPage(index);
                }), restaurant: restaurant,
            ),
            // Expanded(child: FoodListView(
            //   selected, (int index){
            //     setState(() {
            //       selected = index;
            //     });
            // },
            //     pageController,
            //   restaurant
            // ))
          ],
        ));
  }
}
