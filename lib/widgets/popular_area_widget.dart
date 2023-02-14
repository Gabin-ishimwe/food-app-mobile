import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_book_mobile/models/popular_area_model.dart';
import 'package:food_book_mobile/screens/restaurant_screen.dart';
import 'package:food_book_mobile/screens/view_restaurant_screen.dart';

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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RestaurantScreen()));
              },
              child: Text(
                "See more",
                style: TextStyle(color: Color(0xFFF55349), fontSize: 14),
              ),
              style:
                  TextButton.styleFrom(splashFactory: NoSplash.splashFactory),
            )
          ],
        ),
        CarouselSlider(
            options: CarouselOptions(
                height: 204,
                initialPage: 0,
                disableCenter: true,
                enableInfiniteScroll: false,
                autoPlay: true,
                viewportFraction: 0.8,
                padEnds: false),
            items: PopularAreaModel.areas
                .map((area) => restaurantCard(context, area))
                .toList()),
      ]),
    );
  }

  Widget restaurantCard(
      BuildContext context, PopularAreaModel popularAreaModel) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ViewRestaurantScreen()));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            popularAreaModel.name,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
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
                    popularAreaModel.rating.toString(),
                    style: TextStyle(fontSize: 12),
                  ),
                  Padding(padding: EdgeInsets.only(right: 3)),
                  Text(
                    "(${popularAreaModel.votes})",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
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
                    "${popularAreaModel.distance}km",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
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
                    "${popularAreaModel.time} mins",
                    style: TextStyle(color: Colors.grey, fontSize: 12),
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
                    image: AssetImage(popularAreaModel.image),
                    fit: BoxFit.cover)),
          )
        ]),
      ),
    );
  }
}
