import 'package:flutter/material.dart';

class TextFieldOnChangeDeneme extends StatefulWidget {
  _TextFieldOnChangeDenemeState createState() =>
      _TextFieldOnChangeDenemeState();
}

class _TextFieldOnChangeDenemeState extends State<TextFieldOnChangeDeneme> {
  final myController = TextEditingController();

  String deger = "yok";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),              
              )
            ),
            onChanged: (value) {
              print("ilk değer: $value");
            },
            controller: myController,
          ),
          _degerPanel(),
        ],
      ),
    );
  }

  void _printLatestValue() {
    setState(() {
      deger = myController.text;
    });

    print("Değer değişti : ${myController.text}");
  }

  _degerPanel() {
    return Container(
      child: Text(deger),
    );
  }
  
}
