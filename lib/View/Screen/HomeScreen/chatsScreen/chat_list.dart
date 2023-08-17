import 'package:dot_me/View/Screen/HomeScreen/chatsScreen/info.dart';
import 'package:dot_me/View/Screen/HomeScreen/chatsScreen/my_message_card.dart';
import 'package:dot_me/View/Screen/HomeScreen/chatsScreen/sender_message_card.dart';
import 'package:flutter/material.dart';


class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
