import 'package:emarket_1/feature/order_status/order_detail_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/material.dart';

class ShippedStatusPage extends StatefulWidget {
  const ShippedStatusPage({super.key});

  @override
  State<ShippedStatusPage> createState() => _ShippedStatusPageState();
}

class _ShippedStatusPageState extends State<ShippedStatusPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      var route = MaterialPageRoute(
                          builder: (context) => OrderDetailPage());
                      Navigator.push(context, route);
                    },
                    child: Container(
                      // height: 50,
                      width: Sizer(context).w,
                      margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.store_mall_directory_outlined),
                              SizedBox(width: 5),
                              Expanded(
                                child: Text(
                                  "app store",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Text(
                                "ส่งสำเร็จ",
                                textScaleFactor: scaleSize,
                                style: TextStyle(
                                  color: primaryColor,
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
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
                                      return Center(
                                          child: Text(
                                        "image error",
                                        textScaleFactor: scaleSize,
                                      ));
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
                                      textScaleFactor: scaleSize,
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                                      textScaleFactor: scaleSize,
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.grey,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      "฿ 199.00",
                                      textScaleFactor: scaleSize,
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
                              Container(
                                width: 50,
                                height: 80,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: IconButton(
                                        onPressed: () {
                                          print("fav");
                                        },
                                        icon: Icon(
                                          Icons.favorite_border,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: IconButton(
                                        onPressed: () {
                                          print("add");
                                        },
                                        icon: Icon(
                                          Icons.add,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "10 ชิ้น",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "รวมคำสั่งซื้อ ",
                                      textScaleFactor: scaleSize,
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                    Text(
                                      " ฿ 1,990",
                                      textScaleFactor: scaleSize,
                                      style: TextStyle(
                                        color: primaryColor,
                                      ),
                                      textAlign: TextAlign.end,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "ให้คะแนนสินค้า",
                                  textScaleFactor: scaleSize,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(primaryColor),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                      side:
                                          BorderSide(color: Colors.transparent),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "ให้คะแนน",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
