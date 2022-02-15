import 'package:flutter/material.dart';
import 'package:whatsappui/views/screens/calls_screen/calls_screen.dart';
import 'package:whatsappui/views/screens/camera_screen/camera_screen.dart';
import 'package:whatsappui/views/screens/chat_screen/chat_screen.dart';
import 'package:whatsappui/views/screens/status_screen/status_screen.dart';

import 'widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder:
              (BuildContext context, bool innerBoxIsScrolled) => [
            const CustomAppBar(),
          ],
          body: const TabBarView(
            children: [
              CameraScreen(),
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
