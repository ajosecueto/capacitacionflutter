import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          _info("43", "Siguiendo"),
          _info("16.2M", "Seguidores"),
          _info("172.5M", "Me gusta"),
        ],
      ),
    );
  }

  Widget _info(String num, String name) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: [
          Text(num, style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(width: 5),
          Text(
            name,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
