import 'dart:ffi';

class PopularAreaModel {
  String name;
  double rating;
  double distance;
  double time;
  int votes;
  var image;
  int dishes;
  String description;
  double restaurantCash;

  PopularAreaModel(
      {required this.name,
      required this.rating,
      required this.distance,
      required this.time,
      required this.votes,
      required this.image,
      required this.dishes,
      required this.restaurantCash,
      required this.description});

  static List<PopularAreaModel> areas = [
    PopularAreaModel(
        name: "Season Taste - Kigali",
        rating: 4.2,
        distance: 2.4,
        time: 24,
        votes: 240,
        image: "images/home_screen/restaurant_1.png",
        dishes: 25,
        restaurantCash: 20.0,
        description: "Mexican restaurant vendor"),
    PopularAreaModel(
        name: "Marina Kitchen",
        rating: 4.5,
        distance: 2.4,
        time: 30,
        votes: 280,
        image: "images/home_screen/restaurant_2.png",
        dishes: 35,
        restaurantCash: 20.0,
        description: "Chinese cuisine in Rwanda"),
    PopularAreaModel(
        name: "China Town Resto - Kigali",
        rating: 4.1,
        distance: 2.4,
        time: 20,
        votes: 250,
        image: "images/home_screen/restaurant_3.png",
        dishes: 15,
        restaurantCash: 40.0,
        description: "Cocktail kings in kigali"),
    PopularAreaModel(
        name: "Veggie Resto Cafe",
        rating: 4.3,
        distance: 2.4,
        time: 40,
        votes: 270,
        image: "images/home_screen/restaurant_4.png",
        dishes: 45,
        restaurantCash: 30.0,
        description: "Best Fried chicken in Kigali"),
  ];

  static List<PopularAreaModel> moreAreas = [
    PopularAreaModel(
        name: "Season Taste - Kigali",
        rating: 4.2,
        distance: 2.4,
        time: 24,
        votes: 240,
        image: "images/home_screen/restaurant_1.png",
        dishes: 25,
        restaurantCash: 20.0,
        description: "Mexican restaurant vendor"),
    PopularAreaModel(
        name: "Marina Kitchen",
        rating: 4.5,
        distance: 2.4,
        time: 30,
        votes: 280,
        image: "images/home_screen/restaurant_2.png",
        dishes: 35,
        restaurantCash: 20.0,
        description: "Chinese cuisine in Rwanda"),
    PopularAreaModel(
        name: "China Town Resto - Kigali",
        rating: 4.1,
        distance: 2.4,
        time: 20,
        votes: 250,
        image: "images/home_screen/restaurant_3.png",
        dishes: 15,
        restaurantCash: 40.0,
        description: "Cocktail kings in kigali"),
    PopularAreaModel(
        name: "Veggie Resto Cafe",
        rating: 4.3,
        distance: 2.4,
        time: 40,
        votes: 270,
        image: "images/home_screen/restaurant_4.png",
        dishes: 45,
        restaurantCash: 30.0,
        description: "Best Fried chicken in Kigali"),
    PopularAreaModel(
        name: "Season Taste - Kigali",
        rating: 4.2,
        distance: 2.4,
        time: 24,
        votes: 240,
        image: "images/home_screen/restaurant_1.png",
        dishes: 25,
        restaurantCash: 20.0,
        description: "Mexican restaurant vendor"),
    PopularAreaModel(
        name: "Marina Kitchen",
        rating: 4.5,
        distance: 2.4,
        time: 30,
        votes: 280,
        image: "images/home_screen/restaurant_2.png",
        dishes: 35,
        restaurantCash: 20.0,
        description: "Chinese cuisine in Rwanda"),
    PopularAreaModel(
        name: "China Town Resto - Kigali",
        rating: 4.1,
        distance: 2.4,
        time: 20,
        votes: 250,
        image: "images/home_screen/restaurant_3.png",
        dishes: 15,
        restaurantCash: 40.0,
        description: "Cocktail kings in kigali"),
    PopularAreaModel(
        name: "Veggie Resto Cafe",
        rating: 4.3,
        distance: 2.4,
        time: 40,
        votes: 270,
        image: "images/home_screen/restaurant_4.png",
        dishes: 45,
        restaurantCash: 30.0,
        description: "Best Fried chicken in Kigali"),
    PopularAreaModel(
        name: "Season Taste - Kigali",
        rating: 4.2,
        distance: 2.4,
        time: 24,
        votes: 240,
        image: "images/home_screen/restaurant_1.png",
        dishes: 25,
        restaurantCash: 20.0,
        description: "Mexican restaurant vendor"),
    PopularAreaModel(
        name: "Marina Kitchen",
        rating: 4.5,
        distance: 2.4,
        time: 30,
        votes: 280,
        image: "images/home_screen/restaurant_2.png",
        dishes: 35,
        restaurantCash: 20.0,
        description: "Chinese cuisine in Rwanda"),
    PopularAreaModel(
        name: "China Town Resto - Kigali",
        rating: 4.1,
        distance: 2.4,
        time: 20,
        votes: 250,
        image: "images/home_screen/restaurant_3.png",
        dishes: 15,
        restaurantCash: 40.0,
        description: "Cocktail kings in kigali"),
    PopularAreaModel(
        name: "Veggie Resto Cafe",
        rating: 4.3,
        distance: 2.4,
        time: 40,
        votes: 270,
        image: "images/home_screen/restaurant_4.png",
        dishes: 45,
        restaurantCash: 30.0,
        description: "Best Fried chicken in Kigali"),
  ];
}
