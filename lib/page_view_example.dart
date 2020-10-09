import 'package:flutter/material.dart';

class PageViewExample extends StatefulWidget {
  @override
  _PageViewExampleState createState() => _PageViewExampleState();
}

class _PageViewExampleState extends State<PageViewExample> {

  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(
                image: NetworkImage("https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1664087162443781~c5_720x720.jpeg?x-expires=1602259200&x-signature=lRw4OyZOSmc71jAf2B57n2Xti1c%3D")
              )
            ),
          ),
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage("https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1664087162443781~c5_720x720.jpeg?x-expires=1602259200&x-signature=lRw4OyZOSmc71jAf2B57n2Xti1c%3D")
                )
            ),
          )
        ],
      ),
    );
  }
}
