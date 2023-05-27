import 'package:emarket_1/feature/chat/chat_page.dart';
import 'package:emarket_1/theme.dart';
import 'package:emarket_1/widgets/sizer.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatefulWidget {
  const ChatListPage({super.key});

  @override
  State<ChatListPage> createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "แชท",
          textScaleFactor: scaleSize,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: 10,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                var route = MaterialPageRoute(builder: (context) => ChatPage());
                Navigator.push(context, route);
              },
              child: Container(
                width: Sizer(context).w,
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 2,
                      color: Colors.grey.shade300,
                    ),
                  ),
                  color:
                      index == 0 ? primaryColor.withOpacity(0.3) : Colors.white,
                ),
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
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
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "app store",
                                textScaleFactor: scaleSize,
                                style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "ยอดทั้งหมด 30 บาทนะครับ",
                                textScaleFactor: scaleSize,
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "10:01",
                              textScaleFactor: scaleSize,
                            ),
                            index == 0
                                ? Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: primaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                    alignment: Alignment.center,
                                    child: Text(
                                      "2",
                                      textScaleFactor: scaleSize,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                : SizedBox(
                                    height: 25,
                                    width: 25,
                                  ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
