import 'package:find_house_apps/basic/basic.dart';
import 'package:find_house_apps/project/splash.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Basic(),
      home: SplashPage(),
    );
  }
}
