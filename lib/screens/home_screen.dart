import 'package:flutter/material.dart';
import 'package:food_book_mobile/widgets/bottom_nav_widget.dart';
import 'package:food_book_mobile/widgets/popular_area_widget.dart';
import 'package:food_book_mobile/widgets/popular_dishes_widget.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  List<Widget> pages = [
    Text("Home"),
    Text("Search"),
    Text("Orders"),
    Text("Profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customAppBar(),
      bottomNavigationBar: BottomNavWidget(),
      // bottomNavigationBar: Container(
      //   margin: EdgeInsets.all(20),
      //   decoration: BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.circular(30),
      //       boxShadow: [
      //         BoxShadow(
      //           color: Colors.black.withOpacity(.1),
      //           blurRadius: 30,
      //           offset: Offset(0, 10),
      //         )
      //       ]),
      //   child: GNav(
      //       // backgroundColor: Colors.black,
      //       color: Color(0xFFF55349),
      //       tabBackgroundColor: Color.fromARGB(255, 255, 234, 233),
      //       activeColor: Color(0xFFF55349),
      //       padding: EdgeInsets.all(15),
      //       gap: 5,
      //       tabs: [
      //         GButton(
      //           icon: Icons.home,
      //           text: "Home",
      //         ),
      //         GButton(
      //           icon: Icons.search,
      //           text: "Search",
      //         ),
      //         GButton(
      //           icon: Icons.shopping_basket,
      //           text: "Orders",
      //         ),
      //         GButton(
      //           icon: Icons.person,
      //           text: "Profile",
      //         ),
      //       ]),
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(children: const [
            PopularAreaWidget(),
            Padding(padding: EdgeInsets.only(top: 10)),
            PopularDishesWidget()
          ]),
        ),
      ),
      // body: ListView(
      //   padding: EdgeInsets.all(20),
      //   children: [
      //     PopularAreaWidget(),
      //     Padding(padding: EdgeInsets.only(top: 10)),
      //     PopularDishesWidget()
      //   ],
      // ),
    ));
  }

  PreferredSize customAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Stack(clipBehavior: Clip.none, children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: const Color(0xFFF55349),
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 40),
            child: Row(
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
                IntrinsicHeight(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                        style: IconButton.styleFrom(),
                        padding: EdgeInsets.all(0),
                        constraints: BoxConstraints(),
                        onPressed: () {
                          print("Hello");
                        },
                        icon: const Icon(
                          Icons.notifications_active,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      VerticalDivider(
                        // thickness: 10,
                        color: Colors.white,
                        indent: 5,
                        endIndent: 5,
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
                        onPressed: () {
                          print("menu");
                        },
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 22,
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10))
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: -45,
            // left: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 10,
                            color: Colors.white,
                            style: BorderStyle.none)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 10,
                            color: Colors.white,
                            style: BorderStyle.none)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                            width: 10,
                            color: Colors.white,
                            style: BorderStyle.none)),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Search dish name, restaurant",
                    contentPadding: const EdgeInsets.all(10),
                    hintStyle: const TextStyle(fontSize: 14)),
              ),
            ),
          )
        ]));
  }
}
