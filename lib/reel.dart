import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class Reel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Positioned.fill(
            child: FadeInImage.memoryNetwork(
              fit: BoxFit.fitHeight,
              fadeInDuration: Duration(seconds: 1),
              placeholder: kTransparentImage,
              image:
              "https://p16-sign-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/05d6240e1be3d831dfd7ec99a6d0f68a.jpeg?x-expires=1602345600&x-signature=DTcNUD9XZWD5SBG4Oi9c%2BljYfqc%3D",
              fadeInCurve: Curves.bounceIn,
            ),
          ),
          Positioned(
            bottom: 0,
            width: media.width,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: NetworkImage("https://p16-sign-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/05d6240e1be3d831dfd7ec99a6d0f68a.jpeg?x-expires=1602345600&x-signature=DTcNUD9XZWD5SBG4Oi9c%2BljYfqc%3D"),
                        radius: 12,
                      ),
                      SizedBox(width: 8),
                      Text("dianapaola ", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                      FlatButton(
                        child: Text("Seguir", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                        onPressed: () {

                        },
                      )
                    ],
                  ),
                  Text("Dua Lipa - Physical", style: TextStyle(color: Colors.white, fontSize: 12),),
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.favorite, color: Colors.white,),
                          onPressed: () {

                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.comment, color: Colors.white,),
                          onPressed: () {

                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.send, color: Colors.white,),
                          onPressed: () {

                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.more_horiz, color: Colors.white,),
                          onPressed: () {

                          },
                        ),
                        Spacer(),
                        Icon(Icons.favorite, size: 12, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("22.1 mil", style: TextStyle(fontSize: 12, color: Colors.white),),
                        SizedBox(width: 10,),
                        Icon(Icons.comment, size: 12, color: Colors.white,),
                        SizedBox(width: 5,),
                        Text("55", style: TextStyle(fontSize: 12, color: Colors.white),),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
