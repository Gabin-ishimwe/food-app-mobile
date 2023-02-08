import 'package:flutter/material.dart';

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
      ]),
    );
  }
}
