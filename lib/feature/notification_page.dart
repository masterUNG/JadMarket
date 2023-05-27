import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import "package:flutter/material.dart";
import 'package:flutter_slidable/flutter_slidable.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     "การแจ้งเตือน",
      //     style: TextStyle(
      //       color: Colors.black,
      //     ),
      //   ),
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   actions: [
      //     TextButton(
      //       onPressed: () {},
      //       child: Text("แก้ไข"),
      //     ),
      //   ],
      // ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "การแจ้งเตือน",
          textScaleFactor: scaleSize,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: ButtonStyle2().buttonGradient(),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "แก้ไข",
              textScaleFactor: scaleSize,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Slidable(
                        // Specify a key if the Slidable is dismissible.
                        key: const ValueKey(0),
                        // The end action pane is the one at the right or the bottom side.
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          extentRatio: 0.3,
                          children: [
                            SlidableAction(
                              onPressed: (context) {},
                              backgroundColor: Color(0xFFFE4A49),
                              foregroundColor: Colors.white,
                              icon: Icons.delete_outline,
                              label: 'ลบ',
                            ),
                          ],
                        ),
                        child: Container(
                          width: Sizer(context).w,
                          constraints: BoxConstraints(minHeight: 100),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                padding: EdgeInsets.all(10),
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue.shade100,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "XXXXXXX",
                                            textScaleFactor: scaleSize,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "20 ต.ค.22 18.00",
                                          textScaleFactor: scaleSize,
                                        )
                                      ],
                                    ),
                                    Text(
                                      "XXXXXXX",
                                      textScaleFactor: scaleSize,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Divider(height: 2),
                    ],
                  );
                }),
          ],
        ),
      ),
    );
  }
}
