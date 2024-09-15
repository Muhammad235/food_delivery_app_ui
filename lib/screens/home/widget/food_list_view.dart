import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

import '../../../constants/colors.dart';

class FoodListView extends StatelessWidget {
  const FoodListView({super.key});

  @override
  Widget build(BuildContext context) {
    final foods = Food.generatedRecommendFoods();

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: foods.map((food) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.005),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Food Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      food.imgUrl,
                      // width: 100,
                      // height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 16), // Space between image and text

                  // Food details
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            food.name, // Food name
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            food.desc,
                            style: const TextStyle(color: kPrimaryColor),
                          ),
                          const SizedBox(height: 8),
                          Row(children: [
                            const Text(
                              "\$",
                              style:
                                  TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            Text(
                              "${food.price}",
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                fontSize: 18,
                                  ),
                            ),
                          ]),
                        ],
                      ),
                    ),
                  ),

                  // Price and other details
                  const Padding(
                    padding: EdgeInsets.only(right: 16.0, top: 35),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
