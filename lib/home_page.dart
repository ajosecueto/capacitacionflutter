import 'package:capacitacionflutter/profile_header.dart';
import 'package:capacitacionflutter/profile_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: Colors.white54,
        width: 500,
        child: Column(
          children: [
            ProfileHeader(),
            ProfileInfo(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("L A T R I B U 🔥")),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Descripcion",
                        floatingLabelBehavior: FloatingLabelBehavior.always
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
