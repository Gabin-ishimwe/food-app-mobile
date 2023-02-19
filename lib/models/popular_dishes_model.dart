class PopularDishesModel {
  String name;
  List<String> dishItems;
  double rating;
  double distance;
  int votes;
  var image;
  var price;

  PopularDishesModel(
      {required this.name,
      required this.rating,
      required this.distance,
      required this.dishItems,
      required this.votes,
      required this.image,
      required this.price});

  static List<PopularDishesModel> dishes = [
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png",
        price: 20.7),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 10.5),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 50.5),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 10.5),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5),
  ];
  static List<PopularDishesModel> moreDishes = [
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png",
        price: 20.5),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 10.7),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 50.5),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 10.5),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5),
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png",
        price: 20.7),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 10.5),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 50.5),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 10.5),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5),
  ];
}
