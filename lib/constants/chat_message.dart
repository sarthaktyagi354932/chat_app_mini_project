import 'package:chat_app_mini_project/constants/colors.dart';
import 'package:chat_app_mini_project/constants/formate_date.dart';
import 'package:chat_app_mini_project/models/message_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ChatMessage extends StatefulWidget {
  final MessageModel msg;
  final String currentUser;
  final bool isImage;
  const ChatMessage(
      {super.key,
      required this.msg,
      required this.currentUser,
      required this.isImage});

  @override
  State<ChatMessage> createState() => _ChatMessageState();
}

class _ChatMessageState extends State<ChatMessage> {
  @override
  Widget build(BuildContext context) {
    return widget.isImage
        ? Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: widget.msg.sender == widget.currentUser
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(4),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: CachedNetworkImage(
                          imageUrl: "https://picsum.photos/200",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    ),
                
                    
                
                  ],
                ),
                 Row(
                   mainAxisAlignment: widget.msg.sender == widget.currentUser
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            formatDate(widget.msg.timestemp),
                            style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.outline),
                          ),
                        ),
                        widget.msg.sender == widget.currentUser
                            ? widget.msg.isSeenByReciver
                                ? Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: kPrimartColor,
                                  )
                                : Icon(
                                    Icons.check_circle_outline,
                                    size: 15,
                                    color: Colors.grey,
                                  )
                            : SizedBox(),
                      ],
                    )
              ],
              
            ),
            
            
            
            
          )
          
        : Container(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Row(
              mainAxisAlignment: widget.msg.sender == widget.currentUser
                  ? MainAxisAlignment.end
                  : MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: widget.msg.sender == widget.currentUser
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          constraints: BoxConstraints(
                              maxWidth:
                                  MediaQuery.of(context).size.width * 0.75),
                          decoration: BoxDecoration(
                              color: widget.msg.sender == widget.currentUser
                                  ? kReciverColor
                                  : kSanderColor,
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      widget.msg.sender == widget.currentUser
                                          ? Radius.circular(2)
                                          : Radius.circular(22),
                                  bottomRight:
                                      widget.msg.sender == widget.currentUser
                                          ? Radius.circular(20)
                                          : Radius.circular(2),
                                  topLeft: Radius.circular(22),
                                  topRight: Radius.circular(22))),
                          child: Text(
                            widget.msg.messege,
                            style: TextStyle(
                                color: widget.msg.sender == widget.currentUser
                                    ? Colors.white
                                    : Colors.black),
                          ),
                        )
                      ],
                    ),
                  Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 3),
                          child: Text(
                            formatDate(widget.msg.timestemp),
                            style: TextStyle(
                                fontSize: 12,
                                color: Theme.of(context).colorScheme.outline),
                          ),
                        ),
                        widget.msg.sender == widget.currentUser
                            ? widget.msg.isSeenByReciver
                                ? Icon(
                                    Icons.check_circle,
                                    size: 15,
                                    color: kPrimartColor,
                                  )
                                : Icon(
                                    Icons.check_circle_outline,
                                    size: 15,
                                    color: Colors.grey,
                                  )
                            : SizedBox(),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
  }
}
