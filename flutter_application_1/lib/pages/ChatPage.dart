import 'ChatSample.dart';
import 'package:flutter/material.dart';
import 'ChatBottomSheet.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //for custom size of App Bar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 30,
            title: Row(children: [
              ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "Images/image.png",
                        height: 45,
                        width: 45,
                      ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                 child: Text(
                  "Usuário",
                  style: TextStyle(color: Color(0xFF113953)),
                  ),
                ),
             ],
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.call,
                   color: Color(0xFF113953),
                   size: 26,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 25),
                child: Icon(
                  Icons.video_call,
                   color: Color(0xFF113953),
                   size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.more_vert,
                   color: Color(0xFF113953),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
        children: [
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
          ChatSample(),
        ],
      ),
      bottomSheet: ChatBottomSheet(),
    );
  }
}
