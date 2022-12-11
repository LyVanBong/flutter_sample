import 'package:flutter/material.dart';
import 'package:flutter_sample/constants/color_constant.dart';

import 'screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: kBackgroundColor,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: kAccentColor)),
      home:  const HomeScreen(),
    );
  }
}
