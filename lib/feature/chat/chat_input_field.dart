import 'dart:async';
import 'dart:io';

import 'package:emarket_1/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  ChatInputField({
    Key? key,
    @required this.controller,
    @required this.onSend,
    @required this.scrollController,
  }) : super(key: key);
  final TextEditingController? controller;
  final Function()? onSend;
  final ScrollController? scrollController;

  double kDefaultPadding = 20.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SafeArea(
        child: Row(
          children: [
            GestureDetector(
              onTap: () async {},
              child: Icon(
                Icons.camera_alt_outlined,
                color: primaryColor,
                size: 35,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.image_outlined,
                color: primaryColor,
                size: 35,
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: primaryColor.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: kDefaultPadding / 4,
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                          hintText: "กรอกข้อความ",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: onSend,
              child: Icon(
                Icons.send_rounded,
                color: primaryColor,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
