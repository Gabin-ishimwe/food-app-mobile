import "package:flutter/material.dart";

import "../models/popular_dishes_model.dart";

class DishesScreen extends StatefulWidget {
  const DishesScreen({super.key});

  @override
  State<DishesScreen> createState() => _DishesScreenState();
}

class _DishesScreenState extends State<DishesScreen> {
  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width;
    double itemheight = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Color(0xFFF55349),
                    ),
                  ),
                  // splashColor: Colors.transparent,
                  style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFF55349).withOpacity(.2),
                      elevation: 0,
                      shape: CircleBorder(),
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.all(Radius.circular(100)),
                      // ),
                      minimumSize: Size(0, 0)),
                ),
                Text(
                  "Popular Dishes",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  // splashColor: Colors.transparent,
                  child: Icon(
                    Icons.search,
                    size: 15,
                    color: Color(0xFFF55349),
                  ),
                  style: ElevatedButton.styleFrom(
                      splashFactory: NoSplash.splashFactory,
                      padding: EdgeInsets.all(10),
                      backgroundColor: Color(0xFFF55349).withOpacity(.2),
                      elevation: 0,
                      shape: CircleBorder(),
                      minimumSize: Size(0, 0)),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Container(
                // padding: EdgeInsets.only(bottom: 20),
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 15,
                        ),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: PopularDishesModel.moreDishes.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        child: Row(children: [
                          Container(
                              width: MediaQuery.of(context).size.width * 0.3,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                      image: AssetImage(PopularDishesModel
                                          .moreDishes[index].image),
                                      fit: BoxFit.cover))),
                          Padding(padding: EdgeInsets.only(right: 15)),
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                PopularDishesModel.moreDishes[index].name,
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 14),
                              ),
                              // Padding(padding: EdgeInsets.only(bottom: 2)),
                              Text(
                                PopularDishesModel.moreDishes[index].dishItems
                                    .join(" - "),
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 15)),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color:
                                            Color.fromARGB(255, 255, 203, 59),
                                        size: 18,
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 3)),
                                      Text(
                                        PopularDishesModel
                                            .moreDishes[index].rating
                                            .toString(),
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(right: 3)),
                                      Text(
                                        "(${PopularDishesModel.moreDishes[index].votes})",
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
                                      Padding(
                                          padding: EdgeInsets.only(right: 3)),
                                      Text(
                                        "${PopularDishesModel.moreDishes[index].distance.toString()} km",
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
                      );
                    }))
          ]),
        ),
      ),
    ));
  }
}
