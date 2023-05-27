import 'package:carousel_slider/carousel_slider.dart';
import 'package:emarket_1/feature/chat/chat_list_page.dart';
import 'package:emarket_1/feature/production/production_page.dart';
import 'package:emarket_1/feature/category_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> category = [
    "สินค้าแนะนำ",
    "ส่งฟรี",
    "ลดราคา",
    "สินค้ายอดนิยม",
    "สินค้าขายดี",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "ค้นหาสินค้า...",
                            contentPadding:
                                EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.search,
                              color: primaryColor,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: primaryColor,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                            //fillColor: Colors.green
                          ),
                          validator: (val) {},
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.list_alt,
                          color: primaryColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => ChatListPage());
                          Navigator.push(context, route);
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Icon(
                            CupertinoIcons.chat_bubble_text,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 250,
                    width: Sizer(context).w,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Container(
                          child: CarouselSlider(
                            options: CarouselOptions(
                              viewportFraction: 1,
                              autoPlay: true,
                            ),
                            items: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://promotions.co.th/wp-content/uploads/2019/12/capture-20191219-113905.png",
                                  fit: BoxFit.cover,
                                  height: 280 - 70,
                                  width: double.infinity,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Icon(Icons
                                              .image_not_supported_outlined)),
                                    );
                                  },
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  "https://hwc-statics.ais.th/promotion/images/SEO-Promotion-1600x500.jpg",
                                  fit: BoxFit.cover,
                                  height: 280 - 70,
                                  width: double.infinity,
                                  errorBuilder: (context, error, stackTrace) {
                                    return Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Icon(Icons
                                              .image_not_supported_outlined)),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        // ClipRRect(
                        //   borderRadius: BorderRadius.circular(10),
                        //   child: Image.network(
                        //     "https://promotions.co.th/wp-content/uploads/2019/12/capture-20191219-113905.png",
                        //     fit: BoxFit.cover,
                        //     height: 280 - 70,
                        //     width: double.infinity,
                        //     errorBuilder: (context, error, stackTrace) {
                        //       return Container(
                        //         width: double.infinity,
                        //         height: double.infinity,
                        //         decoration: BoxDecoration(
                        //             color: Colors.grey.shade100,
                        //             borderRadius: BorderRadius.circular(10)),
                        //         child: Center(
                        //             child: Icon(
                        //                 Icons.image_not_supported_outlined)),
                        //       );
                        //     },
                        //   ),
                        // ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Icon(
                                            Icons
                                                .account_balance_wallet_outlined,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "฿ 0.00",
                                              textScaleFactor: scaleSize,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "เงินในวอลเล็ท (บาท)",
                                              textScaleFactor: scaleSize,
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(15),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 45,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Icon(
                                            Icons.discount,
                                            size: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "12",
                                              textScaleFactor: scaleSize,
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              "คูปองส่วนลด",
                                              textScaleFactor: scaleSize,
                                              style: TextStyle(
                                                fontSize: 12,
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "หมวดหมู่",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          var route = MaterialPageRoute(
                              builder: (context) => ProductionTwoPage());
                          Navigator.push(context, route);
                        },
                        child: Text(
                          "ดูทั้งหมด",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    primary: false,
                    padding: const EdgeInsets.all(10),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    crossAxisCount: 4,
                    children: <Widget>[
                      titleIcon("เสื้อผ้าผู้ชาย"),
                      titleIcon("มือถือ"),
                      titleIcon("นาฬิกา"),
                      titleIcon("แว่น"),
                      titleIcon("เสื้อผ้าผู้หญิง"),
                      titleIcon("รองเท้า"),
                      titleIcon("กระเป๋า"),
                      titleIcon("เครื่องปะดับ"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return index == 0
                            ? selectedCard(index)
                            : choiceCard(index);
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => ProductionPage());
                          Navigator.push(context, route);
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "https://img.salehere.co.th/p/1200x0/2021/10/27/y1oael45c3ov.jpg",
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Center(
                                            child: Text("image error"));
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  width: double.infinity,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "XXXXXX",
                                        textScaleFactor: scaleSize,
                                        style: TextStyle(
                                          fontSize: 18,
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Text(
                                        "฿ 120",
                                        textScaleFactor: scaleSize,
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star_rounded,
                                                  color: Colors.yellow,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  "4.9",
                                                  textScaleFactor: scaleSize,
                                                ),
                                                SizedBox(width: 5),
                                                Text(
                                                  "|",
                                                  textScaleFactor: scaleSize,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "ขายแล้ว 200 ชิ้น",
                                              textScaleFactor: scaleSize,
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget choiceCard(int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          gradient: ButtonStyle2().buttonGradient(),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Container(
          margin: const EdgeInsets.all(2.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(100),
          ),
          child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                  side: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
            child: Text(
              category[index],
              textScaleFactor: scaleSize,
              style: TextStyle(
                color: Colors.deepOrange,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget selectedCard(int index) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
      child: Container(
        height: 30,
        decoration: BoxDecoration(
          gradient: ButtonStyle2().buttonGradient(),
          borderRadius: BorderRadius.circular(100),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(
            category[index],
            textScaleFactor: scaleSize,
          ),
        ),
      ),
    );
  }

  Widget titleIcon(String text) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: const Padding(
              padding: EdgeInsets.all(5),
              child: FittedBox(
                  child: Icon(
                Icons.image_outlined,
                color: Colors.grey,
              )),
            ),
          ),
        ),
        Expanded(
          child: Text(
            text,
            textScaleFactor: scaleSize,
            style: TextStyle(
              fontSize: 14,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
