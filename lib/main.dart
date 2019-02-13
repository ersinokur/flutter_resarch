import 'package:arge_research/arge/customTextFieldKullanimOrnek.dart';
import 'package:arge_research/arge/grid_view_kullanimi.dart';
import 'package:arge_research/arge/satirsutunKutuCizme.dart';
import 'package:arge_research/arge/textFieldOnChange.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Öğrenme Projesi"),
          ),
          body: CustomTextFieldKullanimOrnek(),
        ));
  }
}
