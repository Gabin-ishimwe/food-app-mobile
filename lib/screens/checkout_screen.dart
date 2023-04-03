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
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
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
                const SizedBox(
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
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your order",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w500),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                    // padding: EdgeInsets.only(bottom: 20),
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 15,
                            ),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            PopularDishesModel.moreDishes.sublist(1, 4).length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      blurRadius: 2)
                                ]),
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
                                  const Padding(
                                      padding: EdgeInsets.only(right: 15)),
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
                                          style: const TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14),
                                        ),
                                        // Padding(padding: EdgeInsets.only(bottom: 2)),
                                        const Text(
                                          'Special message about this dish',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                        const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 10)),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.attach_money_rounded,
                                              color: Colors.red,
                                              size: 18,
                                            ),
                                            const Padding(
                                                padding:
                                                    EdgeInsets.only(right: 1)),
                                            Text(
                                              "${PopularDishesModel.moreDishes[index].price}",
                                              style: const TextStyle(
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
                                              padding: const EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                  color: Colors.red
                                                      .withOpacity(.2),
                                                  borderRadius:
                                                      const BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: const Icon(
                                                Icons.remove,
                                                color: Colors.red,
                                                size: 18,
                                              ),
                                            ),
                                          ),
                                          const Padding(
                                              padding:
                                                  EdgeInsets.only(right: 8)),
                                          Text(
                                            '$itemCount',
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const Padding(
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
                                              padding: const EdgeInsets.all(3),
                                              decoration: const BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5))),
                                              child: const Icon(Icons.add,
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
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              thickness: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Subtotal (3 items)",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.attach_money_rounded,
                          color: Colors.red,
                          size: 18,
                        ),
                        Padding(padding: EdgeInsets.only(right: 1)),
                        Text(
                          "80.5",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Service fees",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.attach_money_rounded,
                          color: Colors.red,
                          size: 18,
                        ),
                        Padding(padding: EdgeInsets.only(right: 1)),
                        Text(
                          "5",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    offset: const Offset(0, 2),
                    blurRadius: 4,
                    spreadRadius: 2)
              ]),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Total: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.attach_money_rounded,
                          color: Colors.red,
                          size: 18,
                        ),
                        Padding(padding: EdgeInsets.only(right: 1)),
                        Text(
                          "85",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    print("ordering....");
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Order",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
              ]),
            )
          ],
        ),
      )),
    ));
  }
}
