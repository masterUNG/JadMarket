import 'dart:async';

import 'package:emarket_1/feature/chat/chat_input_field.dart';
import 'package:emarket_1/feature/chat/chat_message.dart';
import 'package:emarket_1/theme.dart';
import "package:flutter/material.dart";

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  ScrollController scrollController = ScrollController();
  TextEditingController textController = TextEditingController();
  List<ChatMessage> chatMessageList = [
    ChatMessage(
      text: "สวัสดีค่ะ",
      isSender: true,
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      time: "10:01",
    ),
    ChatMessage(
      text: "ของมีอยู่ไหม",
      isSender: true,
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      time: "10:01",
    ),
    ChatMessage(
      text: "มีครับ",
      isSender: false,
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      time: "10:01",
    ),
    ChatMessage(
      text: "ยอดทั้งหมด 30 บาทนะครับ",
      isSender: false,
      messageType: ChatMessageType.text,
      messageStatus: MessageStatus.viewed,
      time: "10:01",
    ),
    ChatMessage(
      text:
          "https://assets.dpdhl-brands.com/guides/dhl/guides/design-basics/logo-and-claim/logo/versions-01.png",
      isSender: false,
      messageType: ChatMessageType.image,
      messageStatus: MessageStatus.viewed,
      time: "10:01",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.network(
                    "https://assets.dpdhl-brands.com/guides/dhl/guides/design-basics/logo-and-claim/logo/versions-01.png",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "app store",
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "เข้าสู่ระบบล่าสุด 3 นาทีที่แล้ว",
                    textScaleFactor: scaleSize,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 50,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                  ),
                  child: Scrollbar(
                    controller: scrollController,
                    child: ListView.builder(
                      itemCount: chatMessageList.length,
                      controller: scrollController,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5.0, right: 10.0),
                              // child: Text(chatMessageList[index].text),
                              child: Message(message: chatMessageList[index]),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  bottom:
                                      MediaQuery.of(context).viewInsets.bottom),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
        bottomSheet: ChatInputField(
          controller: textController,
          scrollController: scrollController,
          onSend: () async {
            var message = ChatMessage(
              text: textController.text,
              isSender: true,
              messageType: ChatMessageType.text,
              messageStatus: MessageStatus.viewed,
              time: "10:01",
            );
            chatMessageList.add(message);
            textController.clear();
            setState(() {});
            await Timer(Duration(milliseconds: 100), () {
              scrollController
                  .jumpTo(scrollController.position.maxScrollExtent);
            });
          },
        ),
      ),
    );
  }
}
