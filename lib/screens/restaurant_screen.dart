import 'package:flutter/material.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                ),
                splashColor: Colors.transparent,
                style: IconButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                  padding: EdgeInsets.zero,
                ),
              ),
              Text(
                "Popular Restaurants",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  splashColor: Colors.transparent,
                  icon: Icon(
                    Icons.search,
                    size: 20,
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          GridView.builder(
              itemCount: 4,
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: ((context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(right: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "images/home_screen/restaurant_1.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "Meze Fresh - Mexico",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color.fromARGB(255, 255, 203, 59),
                                  size: 18,
                                ),
                                Padding(padding: EdgeInsets.only(right: 3)),
                                Text(
                                  "4.5",
                                  style: TextStyle(fontSize: 12),
                                ),
                                Padding(padding: EdgeInsets.only(right: 3)),
                                Text(
                                  "(245)",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
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
                                  "245 km",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ]),
                );
              }))
        ]),
      ),
    ));
  }
}
