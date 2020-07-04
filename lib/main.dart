import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'grid.dart';

//Grid grid=new Grid();
void main() {
  runApp(MyApp());


}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Title',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primarySwatch:Colors.blueGrey
      ),

      home: grid(),

    );
  }
}

