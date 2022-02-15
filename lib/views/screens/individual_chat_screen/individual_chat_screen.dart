import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';

import '../../../model/chat_model.dart';
import 'widgets/individual_chat_appbar.dart';

class IndividualChatScreen extends StatelessWidget {
  const IndividualChatScreen({Key? key, required this.data}) : super(key: key);
  final Chat data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: individualChatAppBar(context, data),
      body: Container(
        height: double.infinity,
        color: AppColors.ksecondaryColor,
        child: Stack(
          children: <Widget>[
            Opacity(
              opacity: .3,
              child: Image.network(
                AppColors.chatBgImage,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
