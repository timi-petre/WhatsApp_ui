import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class CustomTab extends StatelessWidget {
  const CustomTab({
    Key? key,
    required this.name,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(
        name.toUpperCase(),
        style: AppColors.appBarTextThemeBold,
      ),
    );
  }
}
