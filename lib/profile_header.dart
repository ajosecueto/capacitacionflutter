import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://p16-sign-va.tiktokcdn.com/musically-maliva-obj/1664087162443781~c5_720x720.jpeg?x-expires=1602259200&x-signature=lRw4OyZOSmc71jAf2B57n2Xti1c%3D"))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Camilo",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Icon(
                    Icons.check_circle,
                    color: Colors.lightBlue,
                  )
                ],
              ),
              Text("Camilo"),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 200,
                child: FlatButton(
                  color: Color(0xfffe2c55),
                  child: Text("Seguir", style: TextStyle(color: Colors.white)),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 90,
              alignment: Alignment.topCenter,
              child: Icon(Icons.more_horiz)),
        )
      ],
    );
  }
}
