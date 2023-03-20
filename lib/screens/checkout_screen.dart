import 'package:flutter/material.dart';
import "package:flutter_svg/flutter_svg.dart";

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
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
                  height: 200,
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
              height: 20,
            ),
            Divider(
              thickness: 1,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                Text(
                  "Your order",
                  style: TextStyle(color: Colors.grey),
                )
              ]),
            )
          ],
        ),
      )),
    ));
  }
}
