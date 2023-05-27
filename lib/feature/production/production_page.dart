import 'package:emarket_1/feature/production/show_widget.dart';
import 'package:emarket_1/feature/review_page.dart';
import 'package:emarket_1/feature/shop/shop_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductionPage extends StatefulWidget {
  const ProductionPage({super.key});

  @override
  State<ProductionPage> createState() => _ProductionPageState();
}

class _ProductionPageState extends State<ProductionPage> {
  double rate = 3.9;
  int rateSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  "http://www.topcomputerit.com/8602-large_default/lenovo-ideapad-5-14-81yh000cta-by-top-computer.jpg",
                  fit: BoxFit.cover,
                  height: 300,
                  width: Sizer(context).w,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      alignment: Alignment.center,
                      width: Sizer(context).w,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                      ),
                      child: Text("error image"),
                    );
                  },
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SafeArea(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.withOpacity(0.8),
                        ),
                        child: Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LENOVO IDEAPAD 5 14-81YH000CTA / By Top ComputerLENOVO IDEAPAD 5 14-81YH000CTA / By Top Computer",
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 5),
                  Text(
                    "฿ 120",
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  // SizedBox(height: 5),
                  Container(
                    height: 50,
                    child: Row(
                      children: [
                        starRateWidget(),
                        SizedBox(width: 10),
                        Text(
                          rate.toString(),
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          "ขายแล้ว 439 ชิ้น",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.favorite_outline,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.grey,
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
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  var route =
                      MaterialPageRoute(builder: (context) => ShopPage());
                  Navigator.push(context, route);
                },
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                        image: DecorationImage(
                          image: NetworkImage(
                              "http://www.topcomputerit.com/8602-large_default/lenovo-ideapad-5-14-81yh000cta-by-top-computer.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "app store",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "จังหวัดกรุงเทพมหานคร",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    ElevatedButton(
                      onPressed: () {
                        var route =
                            MaterialPageRoute(builder: (context) => ShopPage());
                        Navigator.push(context, route);
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        elevation: MaterialStateProperty.all(0),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            side: BorderSide(
                              color: primaryColor,
                              width: 2,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      child: Text(
                        "ดูร้านค้า",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "รายะเอียด",
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    textScaleFactor: scaleSize,
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              constraints: BoxConstraints(minHeight: 100),
              width: Sizer(context).w,
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return ShowWidget();
                    },
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "เลือกสินค้า",
                      textScaleFactor: scaleSize,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: 100,
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              // borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              // borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "http://www.topcomputerit.com/8602-large_default/lenovo-ideapad-5-14-81yh000cta-by-top-computer.jpg",
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) {
                                  return Center(child: Text("image error"));
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              // padding: EdgeInsets.all(10),
              width: Sizer(context).w,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    width: 150,
                    child: Column(
                      children: [
                        Text(
                          rate.toString(),
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "(5 Review)",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Container(
                          height: 50,
                          child: starRateWidget(),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          // color: Colors.green,
                          ),
                      child: GridView.count(
                        primary: false,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.all(5),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        childAspectRatio: 2,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                rateSelected = 0;
                              });
                            },
                            child: Container(
                              alignment: Alignment.center,
                              decoration: rateSelected == 0
                                  ? BoxDecoration(
                                      border: Border.all(
                                        color: primaryColor,
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    )
                                  : BoxDecoration(
                                      color: Colors.grey.shade100,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Text(
                                "ทั้งหมด (0)",
                                textScaleFactor: scaleSize,
                                style: TextStyle(
                                  color: rateSelected == 0
                                      ? primaryColor
                                      : Colors.grey,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                          selectedStarRate(5),
                          selectedStarRate(4),
                          selectedStarRate(3),
                          selectedStarRate(2),
                          selectedStarRate(1),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade200,
                          image: DecorationImage(
                            image: NetworkImage(
                                "http://www.topcomputerit.com/8602-large_default/lenovo-ideapad-5-14-81yh000cta-by-top-computer.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "สมาน",
                                textScaleFactor: scaleSize,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                "สมชาย",
                                textScaleFactor: scaleSize,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          starRateFromNumWidget(4),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          textScaleFactor: scaleSize,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 15),
                        Container(
                          height: 150,
                          width: Sizer(context).w,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return Container(
                                height: 60,
                                width: 100,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "http://www.topcomputerit.com/8602-large_default/lenovo-ideapad-5-14-81yh000cta-by-top-computer.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "10 ธันวาคม 2565",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      var route =
                          MaterialPageRoute(builder: (context) => ReviewPage());
                      Navigator.push(context, route);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all(0),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          side: BorderSide(
                            color: primaryColor,
                            width: 2,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: Container(
                      width: Sizer(context).w,
                      height: 45,
                      alignment: Alignment.center,
                      child: Text(
                        "ดูรีวิวทั้งหมด",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text(
                      "คุณอาจชอบสิ่งนี้",
                      textScaleFactor: scaleSize,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: 6,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
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
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade400,
                                    borderRadius: BorderRadius.circular(10),
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
                ],
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      bottomSheet: Container(
        width: Sizer(context).w,
        height: 70,
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              child: Row(
                children: [
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: primaryColor,
                          size: 20,
                        ),
                        Text(
                          "แชทกับร้าน",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: double.infinity,
                    width: 2,
                    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    color: primaryColor,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart_outlined,
                          color: primaryColor,
                          size: 20,
                        ),
                        Text(
                          "เพิ่มลงรถเข็น",
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 12,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: Sizer(context).w! * 0.5,
              height: 50,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0, 0.2, 0.5, 0.9],
                  colors: [
                    Colors.amberAccent,
                    Colors.pinkAccent,
                    Colors.purple,
                    Colors.indigo,
                  ],
                ),
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
                child: Text(
                  "ซื้อสินค้า",
                  textScaleFactor: scaleSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget selectedStarRate(int rate) {
    return GestureDetector(
      onTap: () {
        setState(() {
          rateSelected = rate;
        });
      },
      child: Container(
        alignment: Alignment.center,
        decoration: rateSelected == rate
            ? BoxDecoration(
                border: Border.all(
                  color: primaryColor,
                ),
                borderRadius: BorderRadius.circular(10),
              )
            : BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Row(
          children: [
            Icon(
              Icons.star_rate_rounded,
              color: Colors.orange,
            ),
            Text(
              "$rate (0)",
              textScaleFactor: scaleSize,
              style: TextStyle(
                color: rateSelected == rate ? primaryColor : Colors.grey,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget starRateWidget() {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 5,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        if (double.parse(index.toString()) < rate) {
          return Icon(
            Icons.star_rate_rounded,
            color: Colors.orange,
          );
        } else {
          return Icon(
            Icons.star_border_purple500_rounded,
            color: Colors.grey,
          );
        }
      },
    );
  }

  Widget starRateFromNumWidget(int num) {
    return Container(
      height: 30,
      child: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemCount: 5,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          if (double.parse(index.toString()) < num) {
            return Icon(
              CupertinoIcons.star_fill,
              color: Colors.orange,
              size: 20,
            );
          } else {
            return Icon(
              CupertinoIcons.star,
              color: Colors.grey,
              size: 20,
            );
          }
        },
      ),
    );
  }
}
