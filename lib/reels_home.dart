import 'package:capacitacionflutter/reel.dart';
import 'package:flutter/material.dart';

class ReelsHome extends StatefulWidget {
  @override
  _ReelsHomeState createState() => _ReelsHomeState();
}

class _ReelsHomeState extends State<ReelsHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            children: [
              Reel(),
              Reel(),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Container(
              height: 56,
              child: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                automaticallyImplyLeading: true,
                title: Text("Reels"),
                actions: [
                  IconButton(
                    icon: Icon(Icons.camera_alt),
                    onPressed: () {

                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
