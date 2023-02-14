import 'package:flutter/material.dart';

class ViewRestaurantScreen extends StatelessWidget {
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
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image))),
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
                                  name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  description,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
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
                                          "${dishes} Dishes",
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
                                          "\$ ${restaurantCash} - \$ ${restaurantCash + 50}",
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
            ),
            Expanded(
              flex: 7,
              child: Container(
                  child: Center(
                child: Text("other restaurants"),
              )),
            )
          ],
        ),
      )),
      extendBodyBehindAppBar: true,
    ));
  }
}
