import 'package:flutter/material.dart';

class ViewRestaurantScreen extends StatefulWidget {
  const ViewRestaurantScreen({super.key});

  @override
  State<ViewRestaurantScreen> createState() => _ViewRestaurantScreenState();
}

class _ViewRestaurantScreenState extends State<ViewRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.all(20),
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(10),
                                minimumSize: Size(0, 0),
                                backgroundColor: Colors.white.withOpacity(0.2),
                                shape: CircleBorder()),
                            onPressed: () {},
                            child: Padding(
                              padding: EdgeInsets.only(left: 7),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                                size: 20,
                              ),
                            )),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(10),
                                    minimumSize: Size(0, 0),
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    shape: CircleBorder()),
                                onPressed: () {},
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                  size: 20,
                                )),
                            Padding(padding: EdgeInsets.only(right: 5)),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(10),
                                    minimumSize: Size(0, 0),
                                    backgroundColor:
                                        Colors.white.withOpacity(0.2),
                                    shape: CircleBorder()),
                                onPressed: () {},
                                child: Icon(
                                  Icons.priority_high,
                                  color: Colors.white,
                                  size: 20,
                                )),
                          ],
                        )
                      ],
                    ),
                    Positioned(
                        child: Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      padding: EdgeInsets.all(15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bwok - Kigali",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              "Burger - Chicken - Cake",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 3)),
                                    Text(
                                      "35 Dishes",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    // Padding(padding: EdgeInsets.only(right: 3)),
                                    // Text(
                                    //   "(${PopularDishesModel.dishes[index].votes})",
                                    //   style:
                                    //       TextStyle(color: Colors.grey, fontSize: 12),
                                    // )
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(right: 6)),
                                Container(
                                  height: 4,
                                  width: 4,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(right: 6)),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.grey,
                                      size: 18,
                                    ),
                                    Padding(padding: EdgeInsets.only(right: 3)),
                                    Text(
                                      "\$ 50.00 - \$ 80.00",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ]),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ))
                  ],
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image:
                            AssetImage('images/home_screen/restaurant_1.png'))),
              ),
            ),
            Expanded(
              child: Container(
                  child: Center(
                child: Text("other restaurants"),
              )),
              flex: 7,
            )
          ],
        ),
      )),
      extendBodyBehindAppBar: true,
    ));
  }
}
