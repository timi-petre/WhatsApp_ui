import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';
import '../../../../model/chat_model.dart';
import '../../individual_chat_screen/individual_chat_screen.dart';

class UserTile extends StatelessWidget {
  const UserTile({
    Key? key,
    required this.userChat,
  }) : super(key: key);
  final Chat userChat;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.of(context).push(
        MaterialPageRoute<Widget>(
          builder: (BuildContext context) => IndividualChatScreen(data: userChat),
        ),
      ),
      leading: CircleAvatar(
        radius: 28,
        backgroundColor: AppColors.kprimarySwatch,
        backgroundImage: NetworkImage(userChat.avatar),
      ),
      title: Text(
        userChat.name,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
      subtitle: Text(
        userChat.lastMessage,
        style: const TextStyle(
          color: Colors.green,
        ),
      ),
      trailing: Column(
        children: <Widget>[
          Text(
            userChat.time,
            style: TextStyle(
              color: userChat.count > 0 ? Colors.green : Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          if (userChat.count > 0)
            CircleAvatar(
              radius: 13,
              backgroundColor: Colors.green,
              child: Text(
                '${userChat.count}',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            )
          else
            const SizedBox(),
        ],
      ),
    );
  }
}
