import 'package:flutter/material.dart';
import 'package:food_book_mobile/widgets/custom_check_button_widget.dart';
import 'package:food_book_mobile/widgets/custom_radio_button.dart';

class DishDetailsScreen extends StatefulWidget {
  String name;
  var image;
  double price;
  String description;
  var choiceSize;
  var ingredients;
  DishDetailsScreen(
      {super.key,
      required this.name,
      required this.image,
      required this.price,
      required this.description,
      required this.choiceSize,
      required this.ingredients});

  @override
  State<DishDetailsScreen> createState() => _DishDetailsScreenState();
}

class _DishDetailsScreenState extends State<DishDetailsScreen> {
  bool addMessage = false;
  int checkSize = 0;
  int itemCount = 1;
  var dishIngredients = [];

  bool _addIngredients(var value) {
    if (dishIngredients.contains(value)) {
      setState(() {
        dishIngredients.remove(value);
      });
      return false;
    } else {
      setState(() {
        dishIngredients.add(value);
      });
      return true;
    }
  }

  void _addMessageFn() {
    setState(() {
      addMessage = !addMessage;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(children: [
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height * 0.3,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(widget.image))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(10),
                        minimumSize: Size(0, 0),
                        backgroundColor: Colors.white.withOpacity(0.2),
                        shape: CircleBorder()),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 7),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    )),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15))),
            child: Column(children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${widget.name}",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.attach_money,
                                  size: 18,
                                ),
                                Text(
                                  "${widget.price}",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "${widget.description}",
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Divider(
                        thickness: 1,
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Choice of size",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: ((context, index) => InkWell(
                                  splashColor: Colors.transparent,
                                  splashFactory: NoSplash.splashFactory,
                                  onTap: () {
                                    setState(() {
                                      checkSize = index;
                                    });
                                  },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomRadioButton(
                                          index: index,
                                          label: widget.choiceSize[index],
                                          checkSize: checkSize,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.attach_money,
                                              size: 18,
                                            ),
                                            Text(
                                              "${index + 10.30}",
                                              style: TextStyle(fontSize: 14),
                                            )
                                          ],
                                        )
                                      ]),
                                )),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 15,
                                ),
                            itemCount: widget.choiceSize.length),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Ingredients",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: ListView.separated(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemBuilder: ((context, index) => InkWell(
                                  splashColor: Colors.transparent,
                                  splashFactory: NoSplash.splashFactory,
                                  onTap: () {
                                    _addIngredients(index);
                                  },
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        // Row(
                                        //   children: [
                                        //     Icon(
                                        //       Icons.done_rounded,
                                        //       color: Color(
                                        //         0xFFF55349,
                                        //       ),
                                        //       size: 20,
                                        //     ),
                                        //     // Container(
                                        //     //   width: 14,
                                        //     //   height: 14,
                                        //     //   decoration: BoxDecoration(
                                        //     //       color: Colors.grey.shade100,
                                        //     //       borderRadius: BorderRadius.all(
                                        //     //           Radius.circular(5)),
                                        //     //       border: Border.all(
                                        //     //           color:
                                        //     //               Colors.grey.shade400)),
                                        //     // ),
                                        //     Padding(
                                        //         padding:
                                        //             EdgeInsets.only(right: 10)),
                                        //     Text(
                                        //       '${widget.ingredients[index]}',
                                        //       style: TextStyle(
                                        //           color: Colors.grey,
                                        //           fontSize: 13),
                                        //     )
                                        //   ],
                                        // ),
                                        CustomCheckBoxButton(
                                            label: widget.ingredients[index],
                                            value: null,
                                            isSelected: dishIngredients
                                                .contains(index)),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.attach_money,
                                              size: 18,
                                            ),
                                            Text(
                                              "${index + 12.52}",
                                              style: TextStyle(fontSize: 14),
                                            )
                                          ],
                                        )
                                      ]),
                                )),
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 15,
                                ),
                            itemCount: widget.ingredients.length),
                      ),
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Additional message",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          InkWell(
                            splashFactory: NoSplash.splashFactory,
                            splashColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                addMessage = true;
                              });
                              ;
                            },
                            child: Text(
                              'add a note to the restaurant',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 12),
                            ),
                          ),
                          addMessage
                              ? (Row(children: [
                                  Expanded(
                                    flex: 8,
                                    child: TextField(
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.grey.shade100,
                                        contentPadding: EdgeInsets.all(10),
                                        hintText: "Add message",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 12),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none),
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(right: 10)),
                                  Expanded(
                                      flex: 2,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            addMessage = false;
                                          });
                                          ;
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.red.shade400,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Icon(
                                            Icons.close_rounded,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ))
                                ]))
                              : SizedBox()
                        ],
                      )
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: const Color(0xFFF55349),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(15))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SizedBox(
                      //   width: 100,
                      //   child: TextField(
                      //     style: TextStyle(fontSize: 12, color: Colors.white),
                      //     decoration: InputDecoration(
                      //       prefixIcon: Icon(
                      //         Icons.remove,
                      //         color: Colors.white,
                      //       ),
                      //       suffixIcon: Icon(
                      //         Icons.add,
                      //         color: Colors.white,
                      //       ),
                      //       filled: true,
                      //       fillColor: Color(0xFFE8362B),
                      //       contentPadding:
                      //           EdgeInsets.symmetric(horizontal: 10),
                      //       hintText: "1",
                      //       hintStyle:
                      //           TextStyle(color: Colors.white, fontSize: 12),
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(10),
                      //           borderSide: BorderSide.none),
                      //     ),
                      //   ),
                      // ),
                      Container(
                        width: 110,
                        height: 40,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        decoration: BoxDecoration(
                          color: Color(0xFFE8362B),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                splashFactory: NoSplash.splashFactory,
                                onTap: () {
                                  setState(() {
                                    if (itemCount > 1) {
                                      itemCount -= 1;
                                    }
                                  });
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Text(
                                '${itemCount}',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                splashFactory: NoSplash.splashFactory,
                                onTap: () {
                                  setState(() {
                                    if (itemCount >= 0) {
                                      itemCount += 1;
                                    }
                                  });
                                },
                                child: Icon(Icons.add,
                                    color: Colors.white, size: 20),
                              ),
                            ]),
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Add dish",
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Container(
                            height: 4,
                            width: 4,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(right: 10)),
                          Row(
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.white,
                                size: 18,
                              ),
                              // Padding(padding: EdgeInsets.only(right: 3)),
                              Text(
                                "${(widget.price * itemCount).round()}",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ]),
              )
            ]),
          )
        ]),
      )),
    ));
  }
}
