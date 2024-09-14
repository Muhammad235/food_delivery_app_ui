import 'food.dart';

class Restaurant {
  late String name;
  late String waitTime;
  late String distance;
  late String label;
  late String logoUrl;
  late String desc;
  late num score;
  late Map<String, List<Food>> menu;
  Restaurant(
    this.name,
    this.waitTime,
    this.distance,
    this.label,
    this.logoUrl,
    this.desc,
    this.score,
    this.menu,
  );

  static Restaurant generateRestaurant() {
    return Restaurant(
        "Restaurant",
        "20-30 min",
        "2.4km", "Restaurant",
        "assets/images",
        "Orange sandwiches is delicious",
        4.7,
        {
          'Recommend': Food.generatedRecommendFoods(),
          'Popular': [],
          'Pizza': [],
          'Noodles': [],
          'Sandwich': []
        }
    );
  }
}