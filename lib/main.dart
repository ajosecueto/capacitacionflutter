import 'package:capacitacionflutter/animated_container_example.dart';
import 'package:capacitacionflutter/expanded_example.dart';
import 'package:capacitacionflutter/home_page.dart';
import 'package:capacitacionflutter/page_view_example.dart';
import 'package:capacitacionflutter/reels_home.dart';
import 'package:capacitacionflutter/sliver_example.dart';
import 'package:capacitacionflutter/wrap_example.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ReelsHome(),
    );
  }
}