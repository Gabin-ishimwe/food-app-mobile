import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PopularAreaWidget extends StatelessWidget {
  const PopularAreaWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Padding(padding: EdgeInsets.only(top: 10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular restaurants",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See more",
                style: TextStyle(color: Color(0xFFF55349), fontSize: 14),
              ),
              style:
                  TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
            )
          ],
        ),
        // Padding(padding: EdgeInsets.only(top: 5)),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width,
        //   child:
        //       Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        //     Text(
        //       "Lotteria - 124 Sandiago",
        //       style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
        //     ),
        //     Padding(padding: EdgeInsets.only(top: 10)),
        //     Row(
        //       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         Row(
        //           children: [
        //             Icon(
        //               Icons.star,
        //               color: Color.fromARGB(255, 255, 203, 59),
        //               size: 18,
        //             ),
        //             Padding(padding: EdgeInsets.only(right: 3)),
        //             Text(
        //               "4.5",
        //               style: TextStyle(fontSize: 12),
        //             ),
        //             Padding(padding: EdgeInsets.only(right: 3)),
        //             Text(
        //               "(232)",
        //               style: TextStyle(color: Colors.grey, fontSize: 12),
        //             )
        //           ],
        //         ),
        //         Padding(padding: EdgeInsets.only(right: 10)),
        //         Container(
        //           height: 4,
        //           width: 4,
        //           decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.grey,
        //           ),
        //         ),
        //         Padding(padding: EdgeInsets.only(right: 10)),
        //         Row(
        //           children: [
        //             Icon(
        //               Icons.location_on,
        //               color: Colors.grey,
        //               size: 18,
        //             ),
        //             Padding(padding: EdgeInsets.only(right: 3)),
        //             Text(
        //               "1.3 km",
        //               style: TextStyle(color: Colors.grey, fontSize: 12),
        //             )
        //           ],
        //         ),
        //         Padding(padding: EdgeInsets.only(right: 10)),
        //         Container(
        //           height: 4,
        //           width: 4,
        //           decoration: BoxDecoration(
        //             shape: BoxShape.circle,
        //             color: Colors.grey,
        //           ),
        //         ),
        //         Padding(padding: EdgeInsets.only(right: 10)),
        //         Row(
        //           children: [
        //             Icon(
        //               Icons.access_time_filled,
        //               color: Colors.grey,
        //               size: 18,
        //             ),
        //             Padding(padding: EdgeInsets.only(right: 3)),
        //             Text(
        //               "24 mins",
        //               style: TextStyle(color: Colors.grey, fontSize: 12),
        //             )
        //           ],
        //         )
        //       ],
        //     ),
        //     Padding(padding: EdgeInsets.only(top: 10)),
        //     Container(
        //       width: MediaQuery.of(context).size.width,
        //       height: 150,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(8),
        //           image: DecorationImage(
        //               image: AssetImage("images/home_screen/restaurant_1.png"),
        //               fit: BoxFit.cover)),
        //     )
        //   ]),
        // ),
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            aspectRatio: 1,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lotteria - 124 Sandiago",
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
                                  "(232)",
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
                                  "1.3 km",
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
                                  Icons.access_time_filled,
                                  color: Colors.grey,
                                  size: 18,
                                ),
                                Padding(padding: EdgeInsets.only(right: 3)),
                                Text(
                                  "24 mins",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            )
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "images/home_screen/restaurant_1.png"),
                                  fit: BoxFit.cover)),
                        )
                      ]),
                );
              },
            );
          }).toList(),
        )
      ]),
    );
  }
}
