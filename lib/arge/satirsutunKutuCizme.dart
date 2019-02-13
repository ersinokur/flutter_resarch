import 'package:flutter/material.dart';

class KutuCiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            kutu(Colors.red.shade100, "D"),
            kutu(Colors.red.shade300, "A"),
            kutu(Colors.red.shade500, "R"),
            kutu(Colors.red.shade700, "T"),
          ],
        ),
        kutu(Colors.red.shade200, "E"),
        kutu(Colors.red.shade300, "R"),
        kutu(Colors.red.shade400, "S"),
        kutu(Colors.red.shade500, "L"),
        kutu(Colors.red.shade600, "E"),
        kutu(Colors.red.shade700, "R"),
        kutu(Colors.red.shade900, "I"),
      ],
    );
  }

  Widget kutu2(Color color, String harf) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(2),
      color: color,
      child: Text(
        harf,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget kutu(Color color, String harf) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(2),
      width: 50.0,
      height: 50.0,
      color: color,
      alignment: Alignment.center,
      child: Text(
        harf,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
