import 'dart:convert';

import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:emarket_1/test/activity_json.dart';
import 'package:emarket_1/test/activity_model.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/sizer.dart';
import "package:flutter/material.dart";
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PointPage extends StatefulWidget {
  const PointPage({super.key});

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {
  double circular = 15;
  final ValueNotifier<double> _valueNotifier = ValueNotifier(0);
  ActivityModel? _activityModel;
  List<ValueNotifier<double>> _valueList = [];
  callAPI() async {
    _valueList.clear();
    var res = json.encode(activityTest);
    _activityModel = ActivityModel.fromJson(activityTest);
    for (var i = 0; i < _activityModel!.activity!.length; i++) {
      Activity? only = _activityModel!.activity![i];
      _valueList.add(ValueNotifier(0));
    }
  }

  @override
  void initState() {
    callAPI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.chevron_left),
          color: Colors.black,
        ),
        title: Text(
          "BangPun Point",
          textScaleFactor: scaleSize,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 200),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(circular),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(circular),
                          topRight: Radius.circular(circular),
                        ),
                        child: Image.asset(
                          'assets/images/background.png',
                          width: Sizer(context).w,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 30,
                        right: 30,
                        child: Container(
                          height: 100,
                          width: 100,
                          // color: Colors.green,
                          alignment: Alignment.center,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage: NetworkImage(
                                'https://img.freepik.com/free-photo/chinese-handsome-man-smiling-laughing-isolated-white-wall_231208-1572.jpg?w=996&t=st=1672220312~exp=1672220912~hmac=7a40ba00ef881bc7457349f9bd3c61d3946968881d836a7c4e8e69769dfc7c06'),
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 30),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 50),
                                Text(
                                  "ธนาทิป ณ บางช้าง",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                      50,
                                    ),
                                    border: Border.all(color: Colors.blue),
                                  ),
                                  child: Text(
                                    "BangPunPay PLATINUM",
                                    textScaleFactor: scaleSize,
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Point ของคุณ",
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  GradientText(
                    "2,500",
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    colors: gradientColors,
                  ),
                  Text(
                    "0 คะแนนจะหมดอายุใน 31 ต.ค. 2022",
                    textScaleFactor: scaleSize,
                  ),
                  SizedBox(height: 20),
                  GradientText(
                    "ดูรายละเอียดคะแนน",
                    textScaleFactor: scaleSize,
                    colors: gradientColors,
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 50),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(circular),
              ),
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      borderRadius: BorderRadius.circular(circular),
                    ),
                    child: Icon(
                      Icons.blur_circular_rounded,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "0 คะแนน",
                          textScaleFactor: scaleSize,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "จะหมดอายุใน 31 ต.ค. 2022",
                          textScaleFactor: scaleSize,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("object");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(primaryColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    child: Text(
                      "ดูรายละเอียด",
                      textScaleFactor: scaleSize,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: Sizer(context).w,
              constraints: BoxConstraints(minHeight: 150),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(circular),
              ),
              padding: EdgeInsets.all(10),
              child: ListView.builder(
                itemCount: _activityModel!.activity!.length,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  Activity? only = _activityModel!.activity![index];
                  return Column(
                    children: [
                      Row(
                        children: [
                          Builder(builder: (context) {
                            IconData icon = Icons.lock;
                            if (index == 0) {
                              icon = Icons.lock_open;
                            }
                            return Container(
                              height: 80,
                              width: 80,
                              padding: EdgeInsets.all(10),
                              child: FittedBox(
                                child: Icon(
                                  icon,
                                  color: Colors.grey,
                                ),
                              ),
                            );
                          }),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  only?.name ?? "",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${only?.currentValue ?? 0}/${only?.maxValue ?? 0} บาท",
                                  textScaleFactor: scaleSize,
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            child: DashedCircularProgressBar.aspectRatio(
                              aspectRatio: 1, // width ÷ height
                              valueNotifier: _valueList[index],
                              progress: 100 *
                                  (only?.currentValue ?? 0) /
                                  (only?.maxValue ?? 0),
                              maxProgress: 100 *
                                  (only?.maxValue ?? 0) /
                                  (only?.maxValue ?? 0),
                              foregroundColor: Colors.green,
                              backgroundColor: const Color(0xffeeeeee),
                              foregroundStrokeWidth: 5,
                              backgroundStrokeWidth: 5,
                              animation: true,
                              seekSize: 6,
                              seekColor: const Color(0xffeeeeee),
                              child: Center(
                                child: ValueListenableBuilder(
                                  valueListenable: _valueList[index],
                                  builder: (_, double value, __) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        '${value.toInt()}%',
                                        textScaleFactor: scaleSize,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Divider(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
