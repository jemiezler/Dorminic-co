import 'package:dorminic_co/features/home/Model/story_model.dart';
import 'package:dorminic_co/features/home/screens/widgets/story_screen.dart';
import 'package:flutter/material.dart';

// ...

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  // ...

  void _showStory(BuildContext context, int index) {
    final story = Story(
      id: index,
      title: 'Story',
      imageUrl:
          'https://saosuay.com/wp-content/uploads/2021/06/186528861_936043027176369_7630430555052260022_n-1025x1536.jpg',
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryPage(story: story),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ...
      body: Column(
        // ...
        children: [
          // ...
          SizedBox(
            height: 134,
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
                        backgroundImage:
                            AssetImage('assets/icons/App-icon.png'),
                      ),
                      SizedBox(height: 4.0),
                      Text('User $index'),
                      IconButton(
                        onPressed: () {
                          _showStory(context, index);
                        },
                        icon: Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          // ...
        ],
      ),
    );
  }
}
