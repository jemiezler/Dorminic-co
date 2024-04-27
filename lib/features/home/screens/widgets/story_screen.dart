import 'package:dorminic_co/features/home/Model/story_model.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatelessWidget {
  final Story story;

  StoryPage({required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(story.title),
      ),
      body: Center(
        child: Image.asset(story.imageUrl),
      ),
    );
  }
}
