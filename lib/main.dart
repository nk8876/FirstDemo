import 'package:flutter/material.dart';
import 'package:flutterdemo/pages/home_pages.dart';
import 'package:flutterdemo/pages/login_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Awesome App",
      home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage()
      },
    ),
  );
}
