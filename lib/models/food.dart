class Food{
  late String imgUrl;
  late String desc;
  late String name;
  late String waitTime;
  late num score;
  late String cal;
  late num price;
  late num quantity;
  late List<Map<String, String>> ingredients;
  late String about;
  late bool highlight;

  Food(
      this.imgUrl,
      this.desc,
      this.name,
      this.waitTime,
      this.score,
      this.cal,
      this.price,
      this.quantity,
      this.ingredients,
      this.about,
      {this.highlight = false}
   );

  static List<Food> generatedRecommendFoods()
  {
    return [
      Food(
        'assets/images/dish1.png',
        'No.1 in sales',
        'Orange sandwiches',
        '50 min',
        4.8,
        '325 kcal',
        12,
        1,
       [
          {
            'Noodle': 'assets/images'
          },
         {
           'Shrimp': 'assets/images'
         }
       ],
        'Simply put, ramen is a japanese noodle soup',
        highlight: true,

      ),
      Food(
        'assets/images/dish2.png',
        'Low fat',
        'Sai Ua Samum phrai',
        '50 min',
        4.8,
        '325 kcal',
        18,
        1,
        [
          {
            'Noodle': 'assets/images'
          },
          {
            'Shrimp': 'assets/images'
          }
        ],
        'Simply put, ramen is a japanese noodle soup',
        highlight: true,

      ),
      Food(
        'assets/images/dish3.png',
        'Highly recommended',
        'Ratatouille pasta',
        '50 min',
        4.8,
        '325 kcal',
        17,
        1,
        [
          {
            'Noodle': 'assets/images'
          },
          {
            'Shrimp': 'assets/images'
          }
        ],
        'Simply put, ramen is a japanese noodle soup',
        highlight: true,

      )
    ];
  }
}