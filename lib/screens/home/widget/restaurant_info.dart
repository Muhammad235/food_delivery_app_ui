import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import '../../../models/restaurant.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurant = Restaurant.generateRestaurant();

    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.name,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          restaurant.waitTime,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        restaurant.distance,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.4)
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(restaurant.label,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.withOpacity(0.4),
                              fontWeight: FontWeight.bold,
                          )
                      ),
                    ],
                  )
                ],
              ),
               ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                child: const Image(image: AssetImage('assets/images/res_logo.png'),)
              )
            ],
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('"${restaurant.desc}"', style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
              Row(
                children: [
                  const Icon(Icons.star_outline,  color: kPrimaryColor),
                  Text("${restaurant.score}",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)
                    ),
                  const SizedBox(width: 15)
                ],
              ),

            ],
          ),

        ],
      ),
    );
  }
}
