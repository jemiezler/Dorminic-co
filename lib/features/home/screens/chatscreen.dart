import 'package:dorminic_co/features/home/screens/chatpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData.light(), // Default theme
      darkTheme: ThemeData.dark(), // Dark theme
      home: ChatScreen(),
    );
  }
}

void addGroup() {
  // Implement your add group logic here
  print('Add group function called');
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

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chat',
          style: TextStyle(
            color: Theme.of(context).appBarTheme.titleTextStyle!.color,
            fontSize: 25,
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: addGroup,
            icon: const Icon(Icons.add_circle_outline),
            iconSize: 30,
            color: Theme.of(context).iconTheme.color,
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: 40,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  fillColor: Colors.grey[300],
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 134,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    children: [
                      Spacer(),
                      Text(
                        'Stories',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage(
                                  'assets/icons/App-icon.png'), // You can replace this with your avatar image
                            ),
                            SizedBox(height: 4.0),
                            Text('User $index'),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  'massage',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Placeholder for chat list items
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/icons/App-icon-dark.png'), // Ensure this path is correct
                  ),
                  title: Text('User $index'),
                  subtitle: Text('Message $index'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatPage(
                              partnerName: 'John', index: index.toString())),
                    );
                  },
                  trailing: PopupMenuButton<String>(
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
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
