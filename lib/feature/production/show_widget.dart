import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import "package:flutter/material.dart";

class ShowWidget extends StatefulWidget {
  const ShowWidget({super.key});

  @override
  State<ShowWidget> createState() => _ShowWidgetState();
}

class _ShowWidgetState extends State<ShowWidget> {
  List<String> sizeList = [
    'S',
    'M',
    'L',
    'XL',
    'XXL',
  ];
  int selectedSize = 0;

  List<String> colorList = [
    'สีดำ-black',
    'สีกรม-department',
    'สีขาว-white',
  ];
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      alignment: Alignment.bottomCenter,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Container(
        constraints: BoxConstraints(minHeight: 200),
        width: Sizer(context).w,
        padding: EdgeInsets.all(10),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "http://www.topcomputerit.com/8602-large_default/lenovo-ideapad-5-14-81yh000cta-by-top-computer.jpg",
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Center(child: Text("image error"));
                          },
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "฿190",
                      textScaleFactor: scaleSize,
                      style: TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Divider(),
                Text(
                  "สี",
                  textScaleFactor: scaleSize,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: colorList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedColor = index;
                          });
                        },
                        child: Container(
                          height: 20,
                          constraints: BoxConstraints(minWidth: 80),
                          margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: selectedColor == index
                                    ? primaryColor
                                    : Colors.transparent,
                                width: 2),
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Row(
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                margin: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5),
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
                              Text(
                                colorList[index],
                                textScaleFactor: scaleSize,
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Divider(),
                Text(
                  "ไซต์",
                  textScaleFactor: scaleSize,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Container(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: sizeList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedSize = index;
                          });
                        },
                        child: Container(
                          height: 20,
                          constraints: BoxConstraints(minWidth: 80),
                          margin: EdgeInsets.fromLTRB(0, 5, 10, 5),
                          decoration: BoxDecoration(
                            color: selectedSize == index
                                ? primaryColor
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            ),
                          ),
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Text(
                            sizeList[index],
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "จำนวน",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    Container(
                      width: 120,
                      // constraints: BoxConstraints(minWidth: 80),
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                            "0",
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
                Divider(),
                Container(
                  width: Sizer(context).w,
                  height: 50,
                  decoration: BoxDecoration(
                    // gradient: ButtonStyle2().buttonGradient(),
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
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
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.close,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
