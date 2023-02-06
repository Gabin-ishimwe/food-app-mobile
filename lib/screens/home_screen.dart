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
      appBar: customAppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(children: const [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Row(
            //       children: [
            //         Icon(
            //           Icons.emoji_emotions,
            //           color: Color(0xFFE8362B),
            //         ),
            //         Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
            //         Text(
            //           "Hello, Daniels!",
            //           style:
            //               TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            //         )
            //       ],
            //     ),
            //     Icon(
            //       Icons.notifications_active,
            //       color: Color(0xFFE8362B),
            //     )
            //   ],
            // ),
          ]),
        ),
      ),
    ));
  }

  PreferredSize customAppBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          color: Color(0xFFF55349),
          padding: EdgeInsets.all(20),
          child: Stack(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.emoji_emotions,
                      color: Colors.white,
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    Text(
                      "Hello, Daniels!",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        print("Hello");
                      },
                      icon: Icon(
                        Icons.notifications_active,
                        color: Colors.white,
                      ),
                    ),
                    // Padding(padding: EdgeInsets.only()),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
            Positioned(
              // bottom: 0,
              // top: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 0,
                            color: Colors.white,
                            style: BorderStyle.none)),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search dish name, restaurant",
                    contentPadding: EdgeInsets.all(10),
                    hintStyle: TextStyle(fontSize: 14)),
              ),
            )
          ]),
        ));
  }
}
