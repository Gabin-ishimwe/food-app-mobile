class PopularDishesModel {
  String name;
  List<String> dishItems;
  double rating;
  double distance;
  int votes;
  var image;

  PopularDishesModel(
      {required this.name,
      required this.rating,
      required this.distance,
      required this.dishItems,
      required this.votes,
      required this.image});

  static List<PopularDishesModel> dishes = [
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png"),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png"),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png"),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png"),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png"),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png"),
  ];
}
