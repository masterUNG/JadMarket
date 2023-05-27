import 'package:emarket_1/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final double kDefaultPadding = 15.0;
final Color kPrimaryColor = Colors.blue;
final Color kErrorColor = Colors.red;

class Message extends StatelessWidget {
  const Message({
    Key? key,
    @required this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(ChatMessage message) {
      switch (message.messageType) {
        case ChatMessageType.text:
          return TextMessage(message: message);
          break;
        case ChatMessageType.image:
          return ImageMessage(message: message);
          break;
        // case ChatMessageType.audio:
        //   return AudioMessage(message: message);
        //   break;
        // case ChatMessageType.video:
        //   return VideoMessage(message: message);
        //   break;
        default:
          return SizedBox();
      }
    }

    return Row(
      mainAxisAlignment:
          message!.isSender! ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!message!.isSender!) ...[],
        if (message!.isSender!)
          Container(
            padding: EdgeInsets.only(left: 5.0, top: 0.0),
            child: Column(
              children: [
                MessageStatusDot(status: message!.messageStatus),
                Text(
                  message!.time!,
                  textScaleFactor: scaleSize,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                messageContaint(message!),
                if (!message!.isSender!)
                  Container(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Column(
                      children: [
                        Text(
                          message!.time!,
                          textScaleFactor: scaleSize,
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  final MessageStatus? status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [sendStatusWidget(context)],
    );
  }

  Widget sendStatusWidget(BuildContext context) {
    double fontSize = 10;
    switch (status) {
      case MessageStatus.not_sent:
        return Container(
          height: 16.0,
          width: 16.0,
          decoration: BoxDecoration(color: kErrorColor, shape: BoxShape.circle),
          child: Icon(Icons.error_rounded,
              size: 14.0, color: Theme.of(context).scaffoldBackgroundColor),
        );
        break;
      case MessageStatus.not_view:
        return Container(
          child: Text(
            'ยังไม่อ่าน',
            textScaleFactor: scaleSize,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: fontSize,
            ),
          ),
        );

        break;
      case MessageStatus.viewed:
        return Container(
          child: Text(
            'อ่านแล้ว',
            textScaleFactor: scaleSize,
            style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: fontSize,
            ),
          ),
        );

        break;
      case MessageStatus.sending:
        return Container(
          height: 16.0,
          width: 16.0,
          decoration: BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
          child: Icon(Icons.send,
              size: 14.0, color: Theme.of(context).scaffoldBackgroundColor),
        );

        break;
      default:
        return Container(
          height: 16.0,
          width: 16.0,
          decoration: BoxDecoration(color: kErrorColor, shape: BoxShape.circle),
          child: Icon(Icons.error_rounded,
              size: 14.0, color: Theme.of(context).scaffoldBackgroundColor),
        );
    }

    // if (status != MessageStatus.not_sent) {
    //   return Container(
    //     child: Text(
    //       status == MessageStatus.not_view ? 'ยังไม่อ่าน' : 'อ่านแล้ว',
    //       style: GoogleFonts.kanit(
    //           fontSize: 12.0,
    //           fontWeight: FontWeight.w600,
    //           textStyle: TextStyle(color: kPrimaryColor)),
    //     ),
    //   );
    // }
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
          ),
          padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
          decoration: BoxDecoration(
            color: message!.isSender! ? primaryColor : Colors.white,
            // color: kPrimaryColor.withOpacity(message.isSender ? 1 : 0.08),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            message!.text ?? "",
            textScaleFactor: scaleSize,
            style: TextStyle(
              color: message!.isSender! ? Colors.white : Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

class ImageMessage extends StatelessWidget {
  const ImageMessage({
    Key? key,
    this.message,
  }) : super(key: key);

  final ChatMessage? message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.7,
            maxHeight: 150,
          ),
          padding: EdgeInsets.symmetric(
            horizontal: kDefaultPadding * 0.75,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: message!.messageStatus == MessageStatus.sending
              ? Text(
                  "กำลังอัพโหลด...",
                  textScaleFactor: scaleSize,
                )
              : ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  // child: CachedNetworkImage(
                  //   imageUrl: message.text,
                  //   placeholder: (context, url) => CircularProgressIndicator(),
                  //   errorWidget: (context, url, error) => Icon(Icons.error),
                  // ),
                  child: message!.text == null
                      ? Container(
                          height: 150,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                          ),
                          child: Text(
                            "Failed image",
                            textScaleFactor: scaleSize,
                          ),
                        )
                      : Container(
                          height: 150,
                          width: 150,
                          child: Image.network(
                            message!.text ?? "",
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 150,
                                width: 150,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Text(
                                  "Failed image",
                                  textScaleFactor: scaleSize,
                                ),
                              );
                            },
                          ),
                        ),
                ),
        ),
      ],
    );
  }
}

enum ChatMessageType { text, audio, image, video }

enum MessageStatus { sending, not_sent, not_view, viewed }

class ChatMessage {
  final String? text;
  final String? time;
  final ChatMessageType? messageType;
  final MessageStatus? messageStatus;
  final bool? isSender;
  final DateTime? date;

  ChatMessage({
    this.text = "",
    this.time = "",
    @required this.messageType,
    @required this.messageStatus,
    @required this.isSender,
    @required this.date,
  });
}
