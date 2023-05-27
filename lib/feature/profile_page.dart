import 'package:emarket_1/feature/favorite/favorite_page.dart';
import 'package:emarket_1/feature/order_status/order_status_page.dart';
import 'package:emarket_1/feature/point_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Sizer(context).w,
              height: 200,
              decoration: BoxDecoration(
                gradient: ButtonStyle2().buttonGradient(),
              ),
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(5),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-photo/chinese-handsome-man-smiling-laughing-isolated-white-wall_231208-1572.jpg?w=996&t=st=1672220312~exp=1672220912~hmac=7a40ba00ef881bc7457349f9bd3c61d3946968881d836a7c4e8e69769dfc7c06'),
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "ธราทิป ณ บางช้าง",
                            textScaleFactor: scaleSize,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "ยืนยันตัวตนแล้ว",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "รายการคำสั่งซื้อของฉัน",
                          textScaleFactor: scaleSize,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("click");
                          var route = MaterialPageRoute(
                              builder: (context) => OrderStatusPage(0));
                          Navigator.push(context, route);
                        },
                        child: Row(
                          children: [
                            Text(
                              "ดูทั้งหมด",
                              textScaleFactor: scaleSize,
                            ),
                            SizedBox(width: 2),
                            Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      statusButton(
                        "ที่ต้องชำระ",
                        Icons.account_balance_wallet_outlined,
                        onTap: () {
                          print("click ที่ต้องชำระ");
                          var route = MaterialPageRoute(
                              builder: (context) => OrderStatusPage(0));
                          Navigator.push(context, route);
                        },
                      ),
                      statusButton(
                        "ที่ต้องจัดส่ง",
                        Icons.delivery_dining,
                        onTap: () {
                          print("click ที่ต้องจัดส่ง");
                          var route = MaterialPageRoute(
                              builder: (context) => OrderStatusPage(1));
                          Navigator.push(context, route);
                        },
                      ),
                      statusButton(
                        "ที่ต้องได้รับ",
                        CupertinoIcons.cube_box,
                        onTap: () {
                          print("click ที่ต้องได้รับ");
                          var route = MaterialPageRoute(
                              builder: (context) => OrderStatusPage(2));
                          Navigator.push(context, route);
                        },
                      ),
                      statusButton(
                        "ที่ต้องรีวิว",
                        Icons.reviews_outlined,
                        onTap: () {
                          print("click ที่ต้องรีวิว");
                          var route = MaterialPageRoute(
                              builder: (context) => OrderStatusPage(3));
                          Navigator.push(context, route);
                        },
                      ),
                      statusButton(
                        "คืนสินค้า",
                        CupertinoIcons.cube_box,
                        onTap: () {
                          print("click คืนสินค้า");
                          var route = MaterialPageRoute(
                              builder: (context) => OrderStatusPage(5));
                          Navigator.push(context, route);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              color: Colors.white,
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          "My Wallet",
                          textScaleFactor: scaleSize,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      statusButton2(
                        "BangPun Wallet",
                        Icons.account_balance_wallet_outlined,
                        onTap: () {
                          print("click BangPun Wallet");
                        },
                      ),
                      statusButton2(
                        "BangPun Point",
                        Icons.currency_exchange,
                        onTap: () {
                          print("click BangPun Point");
                          var route = MaterialPageRoute(
                              builder: (context) => PointPage());
                          Navigator.push(context, route);
                        },
                      ),
                      statusButton2(
                        "BangPun Point",
                        Icons.confirmation_num_outlined,
                        onTap: () {
                          print("click BangPun Point");
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(1),
              width: Sizer(context).w,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: [0, 0.85],
                  colors: [
                    Colors.blue.shade50,
                    Colors.blue,
                  ],
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                ),
                padding: EdgeInsets.fromLTRB(15, 0, 5, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.store_mall_directory_outlined,
                      color: Colors.blue,
                      size: 40,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "สร้างร้านค้ากับ BangPun",
                      textScaleFactor: scaleSize,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  customTile(
                    "สมาชิก",
                    Icons.confirmation_num_outlined,
                    onTap: () {
                      print("click สมาชิก");
                    },
                  ),
                  customTile(
                    "ถูกใจ",
                    Icons.favorite,
                    onTap: () {
                      print("click ถูกใจ");
                      var route = MaterialPageRoute(
                          builder: (context) => FavoritePage());
                      Navigator.push(context, route);
                    },
                  ),
                  customTile(
                    "ดูล่าสุด",
                    Icons.access_time,
                    onTap: () {
                      print("click ดูล่าสุด");
                    },
                  ),
                  customTile(
                    "ตั้งค่า",
                    Icons.settings,
                    onTap: () {
                      print("click ตั้งค่า");
                    },
                  ),
                  customTile(
                    "ความเป็นส่วนตัว",
                    Icons.policy,
                    onTap: () {
                      print("click ความเป็นส่วนตัว");
                    },
                  ),
                  customTile(
                    "ช่วยเหลือ",
                    Icons.error_outline,
                    onTap: () {
                      print("click ช่วยเหลือ");
                    },
                  ),
                  customTile(
                    "เกี่ยวกับ",
                    Icons.question_mark,
                    onTap: () {
                      print("click เกี่ยวกับ");
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }

  Widget customTile(String text, IconData icons, {required Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Row(
          children: [
            Icon(
              icons,
              size: 40,
            ),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                text,
                textScaleFactor: scaleSize,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Icon(Icons.keyboard_arrow_right)
          ],
        ),
      ),
    );
  }

  Widget statusButton(String text, IconData icons,
      {required Function()? onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icons,
                color: Colors.white,
                size: 30,
              ),
            ),
            Text(
              text,
              textScaleFactor: scaleSize,
            ),
          ],
        ),
      ),
    );
  }

  Widget statusButton2(String text, IconData icons,
      {required Function()? onTap}) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icons,
                color: primaryColor,
                size: 40,
              ),
            ),
            Text(
              text,
              textAlign: TextAlign.center,
              textScaleFactor: scaleSize,
            ),
          ],
        ),
      ),
    );
  }
}
