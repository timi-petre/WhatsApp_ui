import 'package:flutter/material.dart';

import '../../../../model/chat_model.dart';

AppBar individualChatAppBar(BuildContext context, Chat data) {
  return AppBar(
    leadingWidth: 85,
    titleSpacing: 1,
    leading: Container(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () => Navigator.pop(context),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            children: <Widget>[
              const Icon(Icons.arrow_back),
              const SizedBox(
                width: 5,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(data.avatar),
              ),
            ],
          ),
        ),
      ),
    ),
    title: InkWell(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 0.01, horizontal: 5),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            data.name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text(
            'online',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ),
      onTap: () {},
    ),
    centerTitle: false,
    actions: <Widget>[
      IconButton(
        splashRadius: 25,
        icon: const Icon(Icons.videocam),
        onPressed: () {},
      ),
      IconButton(
        splashRadius: 25,
        icon: const Icon(Icons.call),
        onPressed: () {},
      ),
      IconButton(
        splashRadius: 25,
        icon: const Icon(Icons.more_vert),
        onPressed: () {},
      ),
    ],
  );
}
