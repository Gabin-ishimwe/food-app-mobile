class PopularDishesModel {
  String name;
  List<String> dishItems;
  double rating;
  double distance;
  int votes;
  var image;
  var price;
  String description;
  var choiceSize;
  var ingredients;

  PopularDishesModel(
      {required this.name,
      required this.rating,
      required this.distance,
      required this.dishItems,
      required this.votes,
      required this.image,
      required this.price,
      required this.description,
      required this.choiceSize,
      required this.ingredients});

  static List<PopularDishesModel> dishes = [
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png",
        price: 20.7,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 10.5,
        description: 'Delicious fried ribs and tomato sauce',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 50.5,
        description: 'Best fried chicken with chips and mayonnaise',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 10.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
  ];
  static List<PopularDishesModel> moreDishes = [
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png",
        price: 20.7,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 10.5,
        description: 'Delicious fried ribs and tomato sauce',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 50.5,
        description: 'Best fried chicken with chips and mayonnaise',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 10.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png",
        price: 20.7,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 10.5,
        description: 'Delicious fried ribs and tomato sauce',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 50.5,
        description: 'Best fried chicken with chips and mayonnaise',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 10.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Shaking Beef Ti-Trip",
        rating: 4.2,
        distance: 2.4,
        votes: 242,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/desert.png",
        price: 20.7,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "BBQ Rib Dinner",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 10.5,
        description: 'Delicious fried ribs and tomato sauce',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Fried Chicken Dinne",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pancakes.png",
        price: 50.5,
        description: 'Best fried chicken with chips and mayonnaise',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Chicken Pizza",
        rating: 4.2,
        votes: 242,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 10.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Big Burger King",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/ramen.png",
        price: 5.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
    PopularDishesModel(
        name: "Pepperoni Pizza",
        votes: 242,
        rating: 4.2,
        distance: 2.4,
        dishItems: ["Burger", "Chicken", "Cake"],
        image: "images/home_screen/pizza.png",
        price: 8.5,
        description: 'Best hot grilled beef and chips to increase flavors',
        choiceSize: ['Size S', 'Size M', 'Size L'],
        ingredients: [
          "Mayonnaise",
          "Chips",
          'Ketchup',
          'Masara spices',
          "Green pepper",
          "Banana Juice"
        ]),
  ];
}
