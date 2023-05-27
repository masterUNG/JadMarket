import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/material.dart';

class ButtonStylePage extends StatefulWidget {
  const ButtonStylePage({super.key});

  @override
  State<ButtonStylePage> createState() => _ButtonStylePageState();
}

class _ButtonStylePageState extends State<ButtonStylePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: Sizer(context).w,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [0, 0.2, 0.5, 0.9],
                      colors: [
                        Colors.amberAccent,
                        Colors.pinkAccent,
                        Colors.purple,
                        Colors.indigo,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
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
                    child: Text("ใส่เบอร์มือถือของคุณ"),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: Sizer(context).w,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [0, 0.5, 0.85, 0.95],
                      colors: [
                        Colors.amberAccent,
                        Colors.pinkAccent,
                        Colors.purple,
                        Colors.indigo,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
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
                    child: Text("ใส่เบอร์มือถือของคุณ"),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: Sizer(context).w,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [0, 0.5, 0.85, 0.95],
                      colors: [
                        Colors.amberAccent,
                        Colors.pinkAccent,
                        Colors.purple,
                        Colors.deepPurple,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
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
                    child: Text("ใส่เบอร์มือถือของคุณ"),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: Sizer(context).w,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      stops: [0, 0.4, 0.85, 0.95],
                      colors: [
                        Colors.amberAccent,
                        Colors.pinkAccent,
                        Colors.purple,
                        Colors.deepPurple,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(10),
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
                    child: Text("ใส่เบอร์มือถือของคุณ"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
