import 'package:flutter/material.dart';
import 'package:food_book_mobile/models/popular_area_model.dart';
import 'package:food_book_mobile/screens/view_restaurant_screen.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
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
                  "Popular Restaurants",
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
              child: GridView.builder(
                  itemCount: PopularAreaModel.moreAreas.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 15,
                      childAspectRatio: (itemWidth / 2) / 240),
                  itemBuilder: ((context, index) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      // margin: EdgeInsets.only(right: 10),
                      // height: 300,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ViewRestaurantScreen(
                                      name: PopularAreaModel
                                          .moreAreas[index].name,
                                      dishes: PopularAreaModel
                                          .moreAreas[index].dishes,
                                      description: PopularAreaModel
                                          .moreAreas[index].description,
                                      image: PopularAreaModel
                                          .moreAreas[index].image,
                                      restaurantCash: PopularAreaModel
                                          .moreAreas[index].restaurantCash)));
                        },
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  // width: MediaQuery.of(context).size.width,
                                  // height: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      image: DecorationImage(
                                          image: AssetImage(PopularAreaModel
                                              .moreAreas[index].image),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              Text(
                                "${PopularAreaModel.moreAreas[index].name}",
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
                                        color:
                                            Color.fromARGB(255, 255, 203, 59),
                                        size: 18,
                                      ),
                                      // Padding(padding: EdgeInsets.only(right: 2)),
                                      Text(
                                        "${PopularAreaModel.moreAreas[index].rating.toString()}",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      // Padding(padding: EdgeInsets.only(right: 2)),
                                      Text(
                                        "(${PopularAreaModel.moreAreas[index].votes})",
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
                                        "${PopularAreaModel.moreAreas[index].distance} km",
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    );
                  })),
            )
          ]),
        ),
      ),
    ));
  }
}
