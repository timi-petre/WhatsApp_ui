import 'package:flutter/material.dart';
import 'calls_screen/calls_screen.dart';
import 'camera_screen/camera_screen.dart';
import 'chat_screen/chat_screen.dart';
import 'status_screen/status_screen.dart';

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
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => <Widget>[
            const CustomAppBar(),
          ],
          body: const TabBarView(
            children: <Widget>[
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
