import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/HomePage.dart';
import 'package:flutter_application_1/pages/ChatPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF5F5F3),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFF5F5F3),
            foregroundColor: Color(0xFF113953),
          )
          ),
      routes: {
        "/": (context) => HomePage(),
        "chatPage": (context) => ChatPage(),
      },
    );
  }
}
