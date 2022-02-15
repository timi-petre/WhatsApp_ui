import 'package:flutter/material.dart';
import '../../../model/chat_model.dart';
import 'widgets/archived.dart';

import 'widgets/user_tile.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (BuildContext context, int index) {
        if (index == 0) {
          return const Archived();
        }
        return UserTile(
          userChat: chatsList[index - 1],
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 15,
        );
      },
      itemCount: chatsList.length,
    );
  }
}
