import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class SliverExample extends StatefulWidget {
  @override
  _SliverExampleState createState() => _SliverExampleState();
}

class _SliverExampleState extends State<SliverExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: false,
              floating: true,
              title: Text("Example"),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://p16-sign-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/05d6240e1be3d831dfd7ec99a6d0f68a.jpeg?x-expires=1602345600&x-signature=DTcNUD9XZWD5SBG4Oi9c%2BljYfqc%3D"),
                          fit: BoxFit.fitWidth)),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(List.generate(
                  10,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Tooltip(
                          message: "Holaaaaaaaaaaaa",
                          child: ClipOval(
                            child: FadeInImage.memoryNetwork(
                              fadeInDuration: Duration(seconds: 1 * index + 1),
                              placeholder: kTransparentImage,
                              image:
                                  "https://p16-sign-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/05d6240e1be3d831dfd7ec99a6d0f68a.jpeg?x-expires=1602345600&x-signature=DTcNUD9XZWD5SBG4Oi9c%2BljYfqc%3D",
                              fadeInCurve: Curves.bounceIn,
                            ),
                          ),
                        ),
                      )).toList()),
            )
          ],
        ),
      ),
    );
  }
}
