import 'package:blogapp/splash.dart';
import 'package:blogapp/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Zones",
    darkTheme: ThemeData.dark(),
    home: splash(),
  ));
}
