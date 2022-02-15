import 'package:flutter/material.dart';
import 'package:whatsappui/constants/app_colors.dart';
import 'package:whatsappui/views/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        appBarTheme: const AppBarTheme(
          color: AppColors.kprimarySwatch,
          elevation: 0,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
