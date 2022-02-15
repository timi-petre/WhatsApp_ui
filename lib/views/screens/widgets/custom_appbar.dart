import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import 'custom_tab.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      expandedHeight: 110,
      centerTitle: false,
      title: const Text(
        'WhatsApp',
        style: AppColors.appBarTextTheme,
      ),
      actions: <Widget>[
        IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
        IconButton(
          splashRadius: 20,
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(
          title: const TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.photo_camera)),
              CustomTab(
                name: 'chats',
              ),
              CustomTab(
                name: 'status',
              ),
              CustomTab(
                name: 'calls',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
