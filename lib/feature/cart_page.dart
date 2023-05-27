import 'dart:convert';

import 'package:emarket_1/feature/cart_two_page.dart';
import 'package:emarket_1/feature/shop/shop_page.dart';
import 'package:emarket_1/test/cart_json.dart';
import 'package:emarket_1/test/cart_model.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  CartModel? cart;
  callAPI() async {
    var res = json.encode(cartTest1);
    cart = CartModel.fromJson(cartTest1);
  }

  @override
  void initState() {
    callAPI();
    super.initState();
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "รถเข็น",
            textScaleFactor: scaleSize,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: cart?.cart?.length ?? 0,
                  itemBuilder: ((context, index) {
                    Cart only = cart!.cart![index];
                    return cartCard(only);
                  })),
              // cartCard(),
            ],
          ),
        ),
        bottomSheet: Container(
          color: Colors.white,
          height: 60,
          padding: EdgeInsets.fromLTRB(10, 0, 5, 0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ราคาสุทธิ",
                      textScaleFactor: scaleSize,
                    ),
                    Text(
                      "฿ 99",
                      textScaleFactor: scaleSize,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  gradient: ButtonStyle2().buttonGradient(),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    var route =
                        MaterialPageRoute(builder: (context) => CartTwoPage());
                    Navigator.push(context, route);
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Text(
                    "ซื้อสินค้า",
                    textScaleFactor: scaleSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cartCard(Cart cart) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: primaryColor,
                      side: BorderSide(width: 2.0, color: primaryColor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        cart.shopName ?? "",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: () {
                  var route =
                      MaterialPageRoute(builder: (context) => ShopPage());
                  Navigator.push(context, route);
                },
                icon: Icon(
                  Icons.keyboard_arrow_right,
                ),
              ),
            ],
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cart.item?.length ?? 0,
              padding: EdgeInsets.zero,
              itemBuilder: ((context, index) {
                Item only = cart.item![index];
                return Slidable(
                  key: const ValueKey(0),
                  endActionPane: ActionPane(
                    motion: ScrollMotion(),
                    extentRatio: 0.3,
                    children: [
                      SlidableAction(
                        onPressed: (context) {},
                        backgroundColor: Color(0xFFFE4A49),
                        foregroundColor: Colors.white,
                        icon: Icons.delete_outline,
                        label: 'ลบ',
                      ),
                    ],
                  ),
                  child: Container(
                    width: Sizer(context).w,
                    height: 120,
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          activeColor: primaryColor,
                          side: BorderSide(width: 2.0, color: primaryColor),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              only.image ?? "",
                              height: 150.0,
                              width: 100.0,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Center(child: Text("image error"));
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Text(
                                    only.name ?? "",
                                    textScaleFactor: scaleSize,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "฿ ${only.price ?? 0} ",
                                        textScaleFactor: scaleSize,
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        maxLines: 1,
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      // constraints: BoxConstraints(minWidth: 80),
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(color: Colors.grey),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          IconButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.remove,
                                              size: 20,
                                            ),
                                          ),
                                          Text(
                                            "${only.quantity ?? 0}",
                                            textScaleFactor: scaleSize,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          IconButton(
                                            padding: EdgeInsets.zero,
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              })),
        ],
      ),
    );
  }
}
