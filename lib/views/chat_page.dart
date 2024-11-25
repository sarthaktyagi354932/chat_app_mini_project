// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:chat_app_mini_project/constants/chat_message.dart';
import 'package:chat_app_mini_project/constants/colors.dart';
import 'package:chat_app_mini_project/models/message_model.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  TextEditingController messagecantroller = TextEditingController();
  List messages = [
    MessageModel(
        messege: "hello sarthak ",
        sender: "101",
        receiver: "202",
        timestemp: DateTime(2001, 1, 1),
        isSeenByReciver: true),
    MessageModel(
        messege: "hello aman",
        sender: "202",
        receiver: "101",
        timestemp: DateTime(2001, 1, 1),
        isSeenByReciver: false),
    MessageModel(
        messege: "hello himanshu",
        sender: "101",
        receiver: "202",
        timestemp: DateTime(2001, 1, 1),
        isSeenByReciver: false),
    MessageModel(
        messege: "hello himanshu",
        sender: "101",
        receiver: "202",
        timestemp: DateTime(2001, 1, 1),
        isSeenByReciver: false,
        isImage: true)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 40,
        scrolledUnderElevation: 0,
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Other User",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Online",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(8),
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, index) => ChatMessage(
                    msg: messages[index], currentUser: "101", isImage: true),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(6),
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
                color: kSecondryColor, borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                Expanded(
                    child: TextFormField(
                      controller: messagecantroller,
                      
                  decoration: InputDecoration(border: InputBorder.none,hintText: "type a messeage"),
                )),
                IconButton(onPressed: (){}, icon: Icon(Icons.image)),
               IconButton(onPressed: (){}, icon: Icon(Icons.send)),

              ],
            ),
          )
        ],
      ),
    );
  }
}
