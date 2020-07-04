//import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/widgets.dart';
import 'screentwo.dart';
import 'package:flutter_icons/flutter_icons.dart';


class grid extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return Gridviewlist2();

  }
}
class Gridviewlist2 extends State<grid>{

  @override
  List<DynamicWidget> listDynamic=[];

  addDynamic(){

    listDynamic.add(DynamicWidget());
    setState(() {

    });
  }
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Ionicons.ios_arrow_back,
              color: Colors.white,
            ),
            onPressed: null
        ),
        title: Padding(
          padding: EdgeInsets.only(left: 25.0,top:20.0,right:80.0,bottom: 20.0),
          child: Center(

            child: Text('Title'),
          ),
        ),
        backgroundColor: Hexcolor('#0D5EDE'),
      ),

            body: getGridview(),




      floatingActionButton: FloatingActionButton(

         onPressed:(){
           Navigator.of(context)
               .push(
               MaterialPageRoute(
                   builder: (context)=> MyApp()

               )
           );
           addDynamic();



         },
        backgroundColor: Colors.black,


        tooltip: 'Add Note',
        child: new Icon(Icons.add),
      ),
    );

  }

  GridView getGridview(){
    return  new GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,

        ),
        itemCount:listDynamic.length,




      itemBuilder: (BuildContext context, int position) {
          return FlatButton(
            padding: EdgeInsets.all(0),
            child: new Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Hexcolor('#FEEFEF'),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 6,
                    offset: Offset(2, 3), // changes position of shadow
                  ),
                ],
              ),
              height: 165,
              width: 165,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 2),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[


                    Text(
                      'title',
                      style: TextStyle(
                        fontSize: 15,

                        color: Colors.black,
                      ),
                    ),

                  ],
                ),
              ),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(
                  MaterialPageRoute(
                      builder: (context)=> MyApp()

                  )
              );

            },



          );



         }



    );


  }

}
class DynamicWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new TextField(
        decoration: new InputDecoration(hintText: 'Enter data'),

      ),
    );
  }
}





