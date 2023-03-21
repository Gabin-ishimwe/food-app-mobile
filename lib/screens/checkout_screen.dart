import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

import '../models/popular_dishes_model.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int itemCount = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 18,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Check out",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                    ),
                    Text("")
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SvgPicture.asset(
                  'images/checkout_screen/online_payment.svg',
                  semanticsLabel: 'checkout',
                  height: 150,
                )
                // Container(
                //   width: MediaQuery.of(context).size.width,
                //   height: 200,
                //   decoration: BoxDecoration(
                //     image: DecorationImage(
                //         fit: BoxFit.cover,
                //         image: AssetImage(
                //             'images/checkout_screen/checkout_img.png')),
                //   ),
                // )
              ]),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your order",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
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
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                boxShadow: [BoxShadow()]),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  PopularDishesModel
                                                      .moreDishes[index].image),
                                              fit: BoxFit.cover))),
                                  Padding(padding: EdgeInsets.only(right: 15)),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          PopularDishesModel
                                              .moreDishes[index].name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        // Padding(padding: EdgeInsets.only(bottom: 2)),
                                        Text(
                                          PopularDishesModel
                                              .moreDishes[index].description,
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 10)),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.attach_money_rounded,
                                              color: Colors.red,
                                              size: 18,
                                            ),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(right: 1)),
                                            Text(
                                              "${PopularDishesModel.moreDishes[index].price}",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.red),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            splashFactory:
                                                NoSplash.splashFactory,
                                            onTap: () {
                                              setState(() {
                                                if (itemCount > 1) {
                                                  itemCount -= 1;
                                                }
                                              });
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                  color: Colors.red
                                                      .withOpacity(.2),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Icon(
                                                Icons.remove,
                                                color: Colors.red,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 8)),
                                          Text(
                                            '${itemCount}',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(right: 8)),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            splashFactory:
                                                NoSplash.splashFactory,
                                            onTap: () {
                                              setState(() {
                                                if (itemCount >= 0) {
                                                  itemCount += 1;
                                                }
                                              });
                                            },
                                            child: Container(
                                              padding: EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: Icon(Icons.add,
                                                  color: Colors.white,
                                                  size: 16),
                                            ),
                                          ),
                                        ]),
                                  ),
                                ]),
                          );
                        }))
              ]),
            )
          ],
        ),
      )),
    ));
  }
}
