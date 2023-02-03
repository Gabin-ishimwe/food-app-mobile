import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   title: ,
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.emoji_emotions,
                      color: Color(0xFFE8362B),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    Text(
                      "Hello, Daniels!",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Icon(
                  Icons.notifications_active,
                  color: Color(0xFFE8362B),
                )
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            Row(
              // mainAxisSize: MainAxisSize.max,
              children: [
                LayoutBuilder(builder: (context, boxConstraint) {
                  return Container(
                    width: boxConstraint.maxWidth * 0.8,
                    color: Colors.red,
                  );
                })
              ],
            )
          ]),
        ),
      ),
    ));
  }
}
