// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image/image.dart';
//import 'package:loginpage/takePictureScreen.dart';
import 'package:loginpage/home.dart';
import 'package:loginpage/takePictureScreen.dart';

class complaint extends StatefulWidget {
  @override
  //State<MyHomePage>
  _Mycomplaint createState() => _Mycomplaint();
}

class _Mycomplaint extends State<complaint>{

  @override
  Widget build(BuildContext context) {
    //resizeToAvoidBottomInset : false,
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Complaint"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
              children: [
                SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Vehicle Reg No (Other party)",
                      labelText: "Vehicle Registration",
                      labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                      border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 6,
                ),


                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your NIC",
                      labelText: "NIC",
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder()),
                ),

                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Number",
                      labelText: "Phone Number",
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder()),
                ),


                SizedBox(
                  height: 10,
                ),

                TextFormField(
                  decoration: InputDecoration(
                      hintText: "",
                      labelText: "Description",
                      labelStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder()),
                  maxLength: 1000,
                  maxLines: 5,

                ),

                SizedBox(
                  height: 5,
                ),

                Container(
                  margin: EdgeInsets.all(25),
                  child: RaisedButton(
                    child: Text('camera', style: TextStyle(fontSize: 20.0),),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      //Navigator.push(context, MaterialPageRoute(builder: (context)=>takePictureScreen()));
                    },

                  ),
                ),

                SizedBox(
                  height: 10,
                ),

                Container(
                  margin: EdgeInsets.all(25),
                  child: RaisedButton(
                    child: Text('Submit', style: TextStyle(fontSize: 20.0),),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {
                       //Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                    },

                  ),
                ),
              ]
          ),
        ),
      ),

    );
  }

}
