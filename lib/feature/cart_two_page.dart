import 'dart:convert';

import 'package:emarket_1/test/cart_json.dart';
import 'package:emarket_1/test/cart_model.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartTwoPage extends StatefulWidget {
  const CartTwoPage({super.key});

  @override
  State<CartTwoPage> createState() => _CartTwoPageState();
}

class _CartTwoPageState extends State<CartTwoPage> {
  CartModel? cart;
  callAPI() async {
    var res = json.encode(cartTest2);
    cart = CartModel.fromJson(cartTest2);
  }

  @override
  void initState() {
    callAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
          color: Colors.black,
        ),
        title: Text(
          "รถเข็น",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                print("click");
              },
              child: Container(
                width: Sizer(context).w,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: primaryColor,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            Icons.pin_drop_sharp,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Text(
                            "ธนาทิป ณ บางช้าง",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "0645757468",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: 55),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "ทึ่บ้าน",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            "133/103 ม.2 ต.พิมลราช อ.บางบัวทอง จ.นนทบุรี 11130",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 50,
                            child: Icon(
                              Icons.chevron_right_sharp,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: cart?.cart?.length ?? 0,
                itemBuilder: ((context, index) {
                  Cart only = cart!.cart![index];
                  return cartCard(only);
                })),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "วิธีการจัดส่ง",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              "ดูตัวเลือกทั้งหมด ",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Icon(
                                Icons.chevron_right_sharp,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: Sizer(context).w,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://assets.dpdhl-brands.com/guides/dhl/guides/design-basics/logo-and-claim/logo/versions-01.png",
                              height: 150.0,
                              width: 100.0,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Center(child: Text("image error"));
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "DHL",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "ได้รับสินค้าภายใน 12-15 ก.ค.",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: primaryColor,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "฿ 24.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "วิธีการชำระเงิน",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("click");
                        },
                        child: Row(
                          children: [
                            Text(
                              "ดูวิธีชำระเงินทั้งหมด ",
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 15,
                              ),
                            ),
                            Container(
                              height: 50,
                              child: Icon(
                                Icons.chevron_right_sharp,
                                color: primaryColor,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: Sizer(context).w,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://cdn.dribbble.com/users/1769954/screenshots/17738149/media/b9c69e2fa1278967b30270127a2da0e0.png",
                              height: 150.0,
                              width: 100.0,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Center(child: Text("image error"));
                              },
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          flex: 5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "BangPun Pay",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "฿ 199.00",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: primaryColor,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "รายละเอียดคำสั่งซื้อ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 100),
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
                  Text("ราคาสุทธิ"),
                  Text(
                    "฿ 99",
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
                  print("ชำระเงิน");
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text("ชำระเงิน"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget cartCard(Cart cart) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    cart.shopName ?? "",
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 18,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print("click");
                  },
                  icon: Icon(Icons.chevron_right_sharp),
                ),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: cart.item?.length ?? 0,
              padding: EdgeInsets.zero,
              itemBuilder: ((context, index) {
                Item only = cart.item![index];
                return Container(
                  width: Sizer(context).w,
                  height: 120,
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                );
              })),
        ],
      ),
    );
  }
}
