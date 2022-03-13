// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class history extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
        title: Text("Event History"),
    ),
    body: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Form(
    child: Column(
    children: [
      SizedBox(
        height: 20,
      ),
        Text( 'Vehicle Registration number(Third Party) ', textAlign: TextAlign.left, textScaleFactor: 1.2,),
        TextField(),
      SizedBox(
        height: 20,
      ),
      Text( 'Description/Voice Note', textAlign: TextAlign.left, textScaleFactor: 1.2,),
      TextField(),
      SizedBox(
        height: 20,
      ),

        Text('Location', textAlign: TextAlign.left, textScaleFactor: 1.2,),
        TextField(),
        SizedBox(
          height: 20,
        ),
        Text('Time', textAlign: TextAlign.left, textScaleFactor: 1.2,),
        TextField(),

      SizedBox(
        height: 20,
      ),
      Text('Images', textAlign: TextAlign.left, textScaleFactor: 1.2,),
      TextField(),
    ]
    )
    )
    )
    );
  }
}