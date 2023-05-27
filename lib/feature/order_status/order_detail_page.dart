import 'dart:convert';

import 'package:emarket_1/feature/order_status/order_tracking_page.dart';
import 'package:emarket_1/feature/shop/shop_page.dart';
import 'package:emarket_1/test/cart_json.dart';
import 'package:emarket_1/test/cart_model.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({super.key});

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "รายละเอียดคำสั่งซื้อ",
          textScaleFactor: scaleSize,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.error_outline,
              color: primaryColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 120),
              decoration: BoxDecoration(
                color: softGreen,
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "คำสั่งซื้อสำเร็จ",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "ขอบคุณที่ซื้อสินค้า",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    Icons.list_alt_outlined,
                    color: Colors.white,
                    size: 60,
                  ),
                ],
              ),
            ),
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 150),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.fire_truck_outlined),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "สถานะการจัดส่ง",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => OrderTrackingPage());
                          Navigator.push(context, route);
                        },
                        child: Text(
                          "ดูรายละเอียด",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            color: softGreen,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Standard Delivery - ส่งธรรมดาในประเทศ",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "Keery Xpress - Track01234501234",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 30,
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: softGreen,
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 0.5,
                              color: Colors.grey,
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "พัสดุจัดส่งสำเร็จแล้ว",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: softGreen,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "08-10-2022 14:20",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 150),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "ที่อยู่ในการจัดส่ง",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Text(
                          "คัดลอก",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            color: softGreen,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "นายณรงค์พันธ์ เจริญยศธนา",
                              textScaleFactor: scaleSize,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "(+66) 63 493 2824",
                              textScaleFactor: scaleSize,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                              textScaleFactor: scaleSize,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Row(
                      children: [
                        Icon(Icons.store_mall_directory_outlined),
                        Expanded(
                          child: Row(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  cart?.cart?[1].shopName ?? "",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            var route = MaterialPageRoute(
                                builder: (context) => ShopPage());
                            Navigator.push(context, route);
                          },
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: cart?.cart?[1].item?.length ?? 0,
                      padding: EdgeInsets.zero,
                      itemBuilder: ((context, index) {
                        Item only = cart!.cart![1].item![index];
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
                                      return Center(
                                          child: Text(
                                        "image error",
                                        textScaleFactor: scaleSize,
                                      ));
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        only.name ?? "",
                                        textScaleFactor: scaleSize,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Text(
                                              "${only.description ?? ""} ",
                                              textScaleFactor: scaleSize,
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.grey),
                                              maxLines: 1,
                                            ),
                                          ),
                                          Container(
                                            width: 120,
                                            // constraints: BoxConstraints(minWidth: 80),
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            alignment: Alignment.centerRight,
                                            child: Text(
                                              "X ${only.quantity ?? 0}",
                                              textScaleFactor: scaleSize,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              maxLines: 1,
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
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 80),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.account_balance_wallet_outlined),
                      SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          "ช่องทางการชำระเงิน",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 30),
                      Text(
                        "เก็บเงินปลายทาง",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 80),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "หมายเลขคำสั่งซื้อ",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Track01234501234",
                                textScaleFactor: scaleSize,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "คัดลอก",
                              textScaleFactor: scaleSize,
                              style: TextStyle(
                                  color: softGreen,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "เวลาที่สั่งซื้อ",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "12-12-2022 21:01",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "เวลาชำระเงิน",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "12-12-2022 21:01",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "เวลาส่งสินค้า",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "12-12-2022 21:01",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "เวลาที่คำสั่งซื้อสำเร็จ",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          "12-12-2022 21:01",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
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
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "ซื้ออีกครั้ง",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
