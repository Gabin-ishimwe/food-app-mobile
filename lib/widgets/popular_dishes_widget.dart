import 'package:flutter/material.dart';
import 'package:food_book_mobile/models/popular_dishes_model.dart';

class PopularDishesWidget extends StatefulWidget {
  const PopularDishesWidget({super.key});

  @override
  State<PopularDishesWidget> createState() => _PopularDishesWidgetState();
}

class _PopularDishesWidgetState extends State<PopularDishesWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular dishes",
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
        ListView.builder(
            shrinkWrap: true,
            itemCount: PopularDishesModel.dishes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Row(children: [
                    Container(
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: AssetImage(
                                    PopularDishesModel.dishes[index].image),
                                fit: BoxFit.cover))),
                    Padding(padding: EdgeInsets.only(right: 15)),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          PopularDishesModel.dishes[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 14),
                        ),
                        // Padding(padding: EdgeInsets.only(bottom: 2)),
                        Text(
                          PopularDishesModel.dishes[index].dishItems
                              .join(" - "),
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
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
                                  PopularDishesModel.dishes[index].rating
                                      .toString(),
                                  style: TextStyle(fontSize: 12),
                                ),
                                Padding(padding: EdgeInsets.only(right: 3)),
                                Text(
                                  "(${PopularDishesModel.dishes[index].votes})",
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
                                  "${PopularDishesModel.dishes[index].distance.toString()} km",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  ]),
                ),
              );
            })
      ]),
    );
  }
}
