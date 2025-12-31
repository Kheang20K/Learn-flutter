import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/bubble_stories.dart';
import 'package:flutter_application_1/util/user_post.dart';

class UserPage extends StatelessWidget {
  // const UserPage({super.key});
  final List people =[
    "Your Story",
    "Friend 1 Added",
    "Friend 2 Online",
    "Friend 3 Busy",
    "Friend 4 Away",
    "Friend 5 Away",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
              style: TextStyle(
                color: Colors.black
              ),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding:  EdgeInsets.all(20),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.message),
              ],
            )

          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index){
                return BubbleStories(text: people[index]);
              },
            ),
          ),
          UserPost(),
        ],
        
      ),
      
    );
  }
}