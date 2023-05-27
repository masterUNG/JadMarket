import 'package:emarket_1/feature/production/production_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:flutter/material.dart';

class MallPage extends StatefulWidget {
  const MallPage({super.key});

  @override
  State<MallPage> createState() => _MallPageState();
}

class _MallPageState extends State<MallPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Mall",
          textScaleFactor: scaleSize,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7,
              ),
              itemCount: 10,
              padding: EdgeInsets.all(5),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    var route = MaterialPageRoute(
                        builder: (context) => ProductionPage());
                    Navigator.push(context, route);
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    // padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Container(
                            // margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              child: Image.network(
                                "https://scontent.fbkk28-1.fna.fbcdn.net/v/t1.6435-9/32169416_169687163699937_5077390692427235328_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=730e14&_nc_ohc=RHH0Bmd4w4QAX8HICyJ&_nc_ht=scontent.fbkk28-1.fna&oh=00_AfCXB2Kt2DA4O3zxJi1ervwZarrAUqJQFMEWuUByndHalg&oe=63EC9E34",
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
                            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      ),
    );
  }
}
