import 'package:emarket_1/nav.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/button_style_2.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Sizer(context).w,
        height: Sizer(context).h,
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Sizer(context).w! * 0.3),
            Image.asset("assets/logo/emarketlogo-01-1390x40.png"),
            SizedBox(height: 15),
            Text(
              "ยินดีต้อนรับ",
              textScaleFactor: scaleSize,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
           
            SizedBox(height: 50),
            Text(
              "เข้าสู่ระบบหรือลงทะเบียนด้วยเบอร์โทร",
              textScaleFactor: scaleSize,
            ),
            SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              height: 50,
              decoration: ButtonStyle2().buttonColor(),
              child: ElevatedButton(
                onPressed: () {
                  var route =
                      MaterialPageRoute(builder: ((context) => const Nav()));
                  Navigator.pushReplacement(context, route);
                },
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(
                  "ใส่เบอร์มือถือของคุณ",
                  textScaleFactor: scaleSize,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: Sizer(context).w,
              height: 50,
              decoration: ButtonStyle2().buttonColor(),
              child: Container(
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    var route =
                        MaterialPageRoute(builder: ((context) => const Nav()));
                    Navigator.pushReplacement(context, route);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        "เข้าสู่ระบบด้วยบัญชี BangPun Pay",
                        textScaleFactor: scaleSize,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
