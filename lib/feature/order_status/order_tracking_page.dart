import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:timeline_tile/timeline_tile.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({super.key});

  @override
  State<OrderTrackingPage> createState() => _OrderTrackingPageState();
}

class _OrderTrackingPageState extends State<OrderTrackingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "การจัดส่งสำเร็จ",
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
              CupertinoIcons.chat_bubble_2,
              color: primaryColor,
            ),
          ),
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
            SizedBox(height: 10),
            Container(
              constraints: BoxConstraints(minHeight: 100),
              width: Sizer(context).w,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_bag_rounded,
                    color: Colors.grey,
                    size: 40,
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "จัดส่งสำเร็จวันที่",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 5),
                            Expanded(
                                child: Text(
                              "อ., 31 มกราคม 2566",
                              style: TextStyle(
                                color: primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            )),
                          ],
                        ),
                        Text(
                          "ให้บริการโดย Kerry Delivery - ส่งธรรมดาในประเทศ - Kerry Xpress",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              constraints: BoxConstraints(minHeight: 100),
              width: Sizer(context).w,
              margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          "หมายเลขติดตามพัสดุ",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Track01234501234",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                                textAlign: TextAlign.end,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "คัดลอก",
                              style: TextStyle(
                                  color: softGreen,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  ListView.builder(
                      itemCount: 5,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var isFirst = false;
                        Color textLeftColor = Colors.grey;
                        Color textRightColor = Colors.grey;
                        String succesText = "";
                        if (index == 0) {
                          isFirst = true;
                          textLeftColor = Colors.black;
                          textRightColor = softGreen;
                          succesText = "ดูหลักฐานการจัดส่งสินค้า";
                        }
                        return TimelineTile(
                          alignment: TimelineAlign.manual,
                          lineXY: 0.3,
                          isFirst: isFirst,
                          indicatorStyle: index == 0
                              ? IndicatorStyle(
                                  width: 40,
                                  color: softGreen,
                                  iconStyle: IconStyle(
                                    color: Colors.white,
                                    iconData: Icons.check_circle_outline,
                                  ),
                                )
                              : const IndicatorStyle(),
                          endChild: Container(
                            constraints: const BoxConstraints(
                              minHeight: 80,
                            ),
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "การจัดส่งสำเร็จ",
                                  style: TextStyle(
                                    color: textRightColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "พัสดุถูกจัดส่งสำเร็จแล้ว",
                                  style: TextStyle(
                                    color: textRightColor,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  succesText,
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          startChild: Container(
                            color: Colors.white,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "3 มกราคม",
                                  style: TextStyle(
                                    color: textLeftColor,
                                  ),
                                ),
                                Text(
                                  "11:55",
                                  style: TextStyle(
                                    color: textLeftColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
