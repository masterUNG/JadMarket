import 'package:emarket_1/feature/production/production_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:flutter/material.dart';

class FavAllPage extends StatefulWidget {
  const FavAllPage({super.key});

  @override
  State<FavAllPage> createState() => _FavAllPageState();
}

class _FavAllPageState extends State<FavAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text("10 รายการสินค้า"),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "แก้ไข",
                      style: TextStyle(
                        color: primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: 10,
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
                                errorBuilder: (context, error, stackTrace) {
                                  return Center(child: Text("image error"));
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "XXXXXX",
                                  style: TextStyle(
                                    fontSize: 18,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text(
                                  "฿ 120",
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
                                          Text("4.9"),
                                          SizedBox(width: 5),
                                          Text("|"),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        "ขายแล้ว 200 ชิ้น",
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
    );
  }
}
