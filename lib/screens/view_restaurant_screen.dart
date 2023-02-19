import 'package:flutter/material.dart';
import 'package:food_book_mobile/models/popular_dishes_model.dart';

import '../models/popular_area_model.dart';

class ViewRestaurantScreen extends StatefulWidget {
  String name;
  int dishes;
  String description;
  double restaurantCash;
  var image;

  ViewRestaurantScreen(
      {super.key,
      required this.name,
      required this.dishes,
      required this.description,
      required this.image,
      required this.restaurantCash});

  @override
  State<ViewRestaurantScreen> createState() => _ViewRestaurantScreenState();
}

class _ViewRestaurantScreenState extends State<ViewRestaurantScreen> {
  bool showPopularDishes = false;
  bool showMainDishes = false;
  void popularDishesFn() {
    setState(() {
      showPopularDishes = !showPopularDishes;
    });
  }

  void mainDishesFn() {
    setState(() {
      showMainDishes = !showMainDishes;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.height * 0.15);
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(widget.image))),
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
                          onPressed: () {
                            Navigator.pop(context);
                          },
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
                      left: 0,
                      right: 0,
                      bottom: -20 -
                          ((MediaQuery.of(context).size.height * 0.15) / 2),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.15,
                        padding: EdgeInsets.all(15),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 1,
                                  color: Colors.black.withOpacity(0.2))
                            ]),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                widget.description,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.dining_rounded,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 3)),
                                      Text(
                                        "${widget.dishes} Dishes",
                                        style: TextStyle(fontSize: 12),
                                      ),
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
                                        Icons.attach_money_rounded,
                                        color: Colors.grey,
                                        size: 18,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 1)),
                                      Text(
                                        "\$ ${widget.restaurantCash} - \$ ${widget.restaurantCash + 50}",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                      ))
                ],
              ),
            ),
            AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              curve: Curves.easeIn,
              height: showPopularDishes
                  ? ((PopularAreaModel.moreAreas.length / 2) * 240)
                  : 70,
              duration: Duration(milliseconds: 500),
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15 / 2),
              padding: EdgeInsets.only(top: 20),
              child: Stack(children: [
                InkWell(
                  splashColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  onTap: () {
                    print("show container");
                    popularDishesFn();
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Popular dishes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            // Padding(padding: EdgeInsets.only(left: 5)),

                            showPopularDishes
                                ? Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                  )
                          ],
                        ),
                        Text(
                          '8 dishes',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),

                AnimatedPositioned(
                  curve: Curves.easeIn,
                  duration: Duration(milliseconds: 500),
                  width: MediaQuery.of(context).size.width,
                  top: 30,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: showPopularDishes ? 1 : 0,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: GridView.builder(
                          itemCount: PopularAreaModel.moreAreas.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 15,
                                  childAspectRatio:
                                      (MediaQuery.of(context).size.width / 2) /
                                          240),
                          itemBuilder: ((context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.only(right: 10),
                              // height: 300,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        // width: MediaQuery.of(context).size.width,
                                        // height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    PopularAreaModel
                                                        .moreAreas[index]
                                                        .image),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Text(
                                      "${PopularAreaModel.moreAreas[index].name}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.attach_money,
                                          size: 20,
                                        ),
                                        Text(
                                          '12.52',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ]),
                            );
                          })),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  // width: MediaQuery.of(context).size.width,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                )
                // Container(
                //   padding: EdgeInsets.symmetric(horizontal: 20),
                //   child: GridView.builder(
                //       itemCount: PopularAreaModel.moreAreas.length,
                //       shrinkWrap: true,
                //       physics: NeverScrollableScrollPhysics(),
                //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //           crossAxisCount: 2,
                //           crossAxisSpacing: 10,
                //           mainAxisSpacing: 15,
                //           childAspectRatio:
                //               (MediaQuery.of(context).size.width / 2) / 240),
                //       itemBuilder: ((context, index) {
                //         return Container(
                //           width: MediaQuery.of(context).size.width,
                //           // margin: EdgeInsets.only(right: 10),
                //           // height: 300,
                //           child: Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Expanded(
                //                   child: Container(
                //                     // width: MediaQuery.of(context).size.width,
                //                     // height: 150,
                //                     decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(8),
                //                         image: DecorationImage(
                //                             image: AssetImage(PopularAreaModel
                //                                 .moreAreas[index].image),
                //                             fit: BoxFit.cover)),
                //                   ),
                //                 ),
                //                 Padding(padding: EdgeInsets.only(top: 10)),
                //                 Text(
                //                   "${PopularAreaModel.moreAreas[index].name}",
                //                   style: TextStyle(
                //                       fontWeight: FontWeight.w700,
                //                       fontSize: 14),
                //                 ),
                //                 Padding(padding: EdgeInsets.only(top: 5)),
                //                 Row(
                //                   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //                   children: [
                //                     Icon(
                //                       Icons.attach_money,
                //                       size: 20,
                //                     ),
                //                     Text(
                //                       '12.52',
                //                       style: TextStyle(
                //                           fontWeight: FontWeight.w600),
                //                     )
                //                   ],
                //                 ),
                //               ]),
                //         );
                //       })),
                // )
              ]),
            ),
            AnimatedContainer(
              width: MediaQuery.of(context).size.width,
              curve: Curves.easeIn,
              height: showMainDishes
                  ? ((PopularDishesModel.moreDishes.length / 2) * 240)
                  : 50,
              duration: Duration(milliseconds: 500),
              margin: EdgeInsets.only(top: 10),
              child: Stack(children: [
                InkWell(
                  splashColor: Colors.transparent,
                  splashFactory: NoSplash.splashFactory,
                  onTap: () {
                    print("show container");
                    mainDishesFn();
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Main dishes",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            // Padding(padding: EdgeInsets.only(left: 5)),
                            showMainDishes
                                ? Icon(
                                    Icons.arrow_drop_up,
                                    color: Colors.grey,
                                  )
                                : Icon(
                                    Icons.arrow_drop_down,
                                    color: Colors.grey,
                                  )
                          ],
                        ),
                        Text(
                          '30 dishes',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                AnimatedPositioned(
                  curve: Curves.easeIn,
                  duration: Duration(milliseconds: 500),
                  width: MediaQuery.of(context).size.width,
                  top: 30,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 500),
                    opacity: showMainDishes ? 1 : 0,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: GridView.builder(
                          itemCount: PopularDishesModel.moreDishes.length,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 15,
                                  childAspectRatio:
                                      (MediaQuery.of(context).size.width / 2) /
                                          240),
                          itemBuilder: ((context, index) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              // margin: EdgeInsets.only(right: 10),
                              // height: 300,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        // width: MediaQuery.of(context).size.width,
                                        // height: 150,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    PopularDishesModel
                                                        .moreDishes[index]
                                                        .image),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10)),
                                    Text(
                                      "${PopularDishesModel.moreDishes[index].name}",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 5)),
                                    Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Icon(
                                          Icons.attach_money,
                                          size: 20,
                                        ),
                                        Text(
                                          '${PopularDishesModel.moreDishes[index].price}',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
                                    ),
                                  ]),
                            );
                          })),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  // width: MediaQuery.of(context).size.width,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Divider(
                      thickness: 1,
                    ),
                  ),
                )
              ]),
            ),
          ],
        ),
      )),
      extendBodyBehindAppBar: true,
    ));
  }
}
