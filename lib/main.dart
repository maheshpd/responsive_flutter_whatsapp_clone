import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/colors.dart';
import 'package:flutter_whatsapp_clone/responsive/responsive_layout.dart';
import 'package:flutter_whatsapp_clone/screen/mobile_screen_layout.dart';
import 'package:flutter_whatsapp_clone/screen/web_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp UI',
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(
          mobileScreenLayout:  MobileScreenLayout(),
          webScreenLayout:  WebScreenLayout()),
    );
  }
}
