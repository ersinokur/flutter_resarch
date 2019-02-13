import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 10),
              //borderRadius: new BorderRadius.all(new Radius.circular(5.0)),
              boxShadow: [
                new BoxShadow(
                  color: Colors.red,
                  offset: new Offset(10.0, 5.0),
                  blurRadius: 20.0,
                )
              ],
              shape: BoxShape.circle,
              color: Colors.blue[100 * ((index + 1) % 8)],
              gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
              // image: DecorationImage(
              //       image: AssetImage("assets/images/emre.jpg"),
              //     fit: BoxFit.contain,
              //     alignment: Alignment.topCenter)
            ),
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Merhaba Flutter $index",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
          onTap: () => debugPrint("Merhaba flutter $index tıklanıldı"),
          onDoubleTap: () =>
              debugPrint("Merhaba flutter $index çift tıklanıldı"),
          onLongPress: () => debugPrint("Merhaba flutter $index uzun basıldı"),
          onHorizontalDragStart: (e) =>
              debugPrint("Merhaba flutter $index uzun basıldı $e"),
        );
      },
    );
  }
}
