import 'package:dorminic_co/features/home/screens/Service/Chatservice.dart';
import 'package:flutter/material.dart';

class ChatMessageWidget extends StatelessWidget {
  final ChatMessage message;

  const ChatMessageWidget({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: (message.messageType == "receiver"
          ? Alignment.topLeft
          : Alignment.topRight),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: (message.messageType == "receiver"
              ? Colors.grey.shade300
              : Colors.blue.shade300),
        ),
        child: Text(
          message.messageContent,
          style: TextStyle(
            fontSize: 16.0,
            color: (message.messageType == "receiver"
                ? Colors.black
                : Colors.white),
          ),
        ),
      ),
    );
  }
}
