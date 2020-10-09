import 'package:flutter/material.dart';

class ExpandedExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(height: 100, color: Colors.red),
            Expanded(child: Container(height: 100, color: Colors.blue)),
            Container(height: 100, color: Colors.yellow),
            Expanded(
                flex: 2, child: Container(height: 100, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
