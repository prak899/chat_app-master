import 'package:chat_app/Screen/ImageSplashScreen.dart';
import 'package:chat_app/lightcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dashboard.dart';
import 'chat_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: LightColors.kLightYellow, // navigation bar color
    statusBarColor: Colors.transparent, // status bar color
  ));
  runApp(MyApp());

  
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: LightColors.kDarkYellow),
      home: ImageSplashScreen(),
      initialRoute: '/',
      routes: {'/home': (context) => List(), '/sheet': (context) => HomePage()},
    );
  }
}
