import 'dart:ffi';

class PopularAreaModel {
  String name;
  double rating;
  double distance;
  double time;
  int votes;
  var image;

  PopularAreaModel(
      {required this.name,
      required this.rating,
      required this.distance,
      required this.time,
      required this.votes,
      required this.image});

  static List<PopularAreaModel> areas = [
    PopularAreaModel(
        name: "Meze fresh",
        rating: 4.2,
        distance: 2.4,
        time: 24,
        votes: 240,
        image: "images/home_screen/restaurant_1.png"),
    PopularAreaModel(
        name: "BWOK - Kigali",
        rating: 4.5,
        distance: 2.4,
        time: 30,
        votes: 280,
        image: "images/home_screen/restaurant_2.png"),
    PopularAreaModel(
        name: "Black stone lounge",
        rating: 4.1,
        distance: 2.4,
        time: 20,
        votes: 250,
        image: "images/home_screen/restaurant_3.png"),
    PopularAreaModel(
        name: "KFC - Kigali",
        rating: 4.3,
        distance: 2.4,
        time: 40,
        votes: 270,
        image: "images/home_screen/restaurant_4.png"),
  ];

  static List<PopularAreaModel> moreAreas = [
    PopularAreaModel(
        name: "Meze fresh",
        rating: 4.2,
        distance: 2.4,
        time: 24,
        votes: 240,
        image: "images/home_screen/restaurant_1.png"),
    PopularAreaModel(
        name: "BWOK - Kigali",
        rating: 4.5,
        distance: 2.4,
        time: 30,
        votes: 280,
        image: "images/home_screen/restaurant_2.png"),
    PopularAreaModel(
        name: "Black stone lounge",
        rating: 4.1,
        distance: 2.4,
        time: 20,
        votes: 250,
        image: "images/home_screen/restaurant_3.png"),
    PopularAreaModel(
        name: "KFC - Kigali",
        rating: 4.3,
        distance: 2.4,
        time: 40,
        votes: 270,
        image: "images/home_screen/restaurant_4.png"),
    PopularAreaModel(
        name: "Meze fresh",
        rating: 4.2,
        distance: 2.4,
        time: 24,
        votes: 240,
        image: "images/home_screen/restaurant_1.png"),
    PopularAreaModel(
        name: "BWOK - Kigali",
        rating: 4.5,
        distance: 2.4,
        time: 30,
        votes: 280,
        image: "images/home_screen/restaurant_2.png"),
    PopularAreaModel(
        name: "Black stone lounge",
        rating: 4.1,
        distance: 2.4,
        time: 20,
        votes: 250,
        image: "images/home_screen/restaurant_3.png"),
    PopularAreaModel(
        name: "KFC - Kigali",
        rating: 4.3,
        distance: 2.4,
        time: 40,
        votes: 270,
        image: "images/home_screen/restaurant_4.png"),
  ];
}
