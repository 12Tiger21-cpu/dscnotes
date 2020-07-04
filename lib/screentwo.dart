import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Ionicons.ios_arrow_back,
              color: Colors.white,
            ),

            onPressed:(){
              Navigator.pop(context);
            },


        ),
         title: Padding(
           padding: EdgeInsets.only(left: 33.0,top:20.0,right:80.0,bottom: 20.0),
           child: Center(

                 child: Text('Add screen'),
           ),
         ),

        backgroundColor: Hexcolor('#0D5EDE'),
         ),

        body: Body(),

    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String _title;
  String _content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Hexcolor('#FEEFEF'),
            padding: EdgeInsets.fromLTRB(25, 64, 25, 25),
             child: new TextFormField(
            cursorColor: Colors.black,
            onChanged: (value){
            _content=value;
           },

               decoration: new InputDecoration(
              border:InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
             contentPadding: EdgeInsets.only(left: 15,bottom: 11,top: 11,right: 15),



                 hintText: 'Content'),
              style: TextStyle(
              fontSize: 20,
          ),
        ),
          ),

          Container(
            height: 49.0,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 6,
                  offset: Offset(2, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 25),
            child: new TextFormField(
              cursorColor: Colors.black,
              onChanged: (value){
                _title=value;
              },

                 decoration: new InputDecoration(
                  border:InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                     contentPadding: EdgeInsets.only(left: 15,bottom: 11,top: 11,right: 15),


                  hintText: 'Title'),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}