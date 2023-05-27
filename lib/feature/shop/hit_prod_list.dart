import 'package:emarket_1/theme.dart';
import "package:flutter/material.dart";

class HitProdList extends StatefulWidget {
  const HitProdList({super.key});

  @override
  State<HitProdList> createState() => _HitProdListState();
}

class _HitProdListState extends State<HitProdList> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.7,
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // var route = MaterialPageRoute(
                  //     builder: (context) => ProductionPage());
                  // Navigator.push(context, route);
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
    );
  }
}
