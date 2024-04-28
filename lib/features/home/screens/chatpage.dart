import 'package:dorminic_co/features/home/screens/Service/Chatservice.dart';
import 'package:dorminic_co/features/home/screens/widgets/ChatMessageWidget.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String partnerName;

  const ChatPage({Key? key, required this.partnerName, required String index})
      : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class Chatpage extends StatefulWidget {
  final String partnerName;

  const Chatpage({Key? key, required this.partnerName}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final messageController = TextEditingController();
  final List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello, how are you?", messageType: "receiver"),
    ChatMessage(
        messageContent: "I'm good, thank you. How about you?",
        messageType: "sender"),
  ];

  void sendMessage() {
    setState(() {
      messages.add(ChatMessage(
          messageContent: messageController.text, messageType: "sender"));
      messageController.clear();
    });
  }

  void showOptionsMenu(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text("Chat Options"),
          children: [
            SimpleDialogOption(
              child: Text("Delete Chat"),
              onPressed: () {
                // Add code to delete the chat here
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text("Block Chat"),
              onPressed: () {
                // Add code to block the chat here
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text("Report Chat"),
              onPressed: () {
                // Add code to report the chat here
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.partnerName),
        actions: [
          PopupMenuButton<String>(
            onSelected: (String value) {
              if (value == "options") {
                showOptionsMenu(context);
              }
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: "options",
                child: Text("Options"),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ChatMessageWidget(message: messages[index]);
              },
            ),
          ),
          SizedBox(
            child: Container(
              padding: EdgeInsets.only(bottom: 10, left: 10),
              child: Row(
                children: [
                  IconTheme(
                    data: IconThemeData(color: Colors.grey),
                    child: IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: () {
                        // Add code to open the camera here
                      },
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      decoration: InputDecoration(
                        hintText: 'Enter Message',
                        fillColor: Colors.grey[300],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: sendMessage,
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      // Add code to open the add menu here
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
