import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  double rate = 3.9;
  int rateSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "รีวิว",
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
            Icons.chevron_left_sharp,
            color: primaryColor,
          ),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 5),
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
            ListView.builder(
              itemCount: 10,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    reviewCard(context),
                    SizedBox(height: 10),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget reviewCard(BuildContext context) {
    return Container(
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
        ],
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
