// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:loginpage/complaint.dart';
import 'package:loginpage/editdetails.dart';
import 'package:loginpage/history.dart';
import 'package:loginpage/message.dart';
import 'package:loginpage/passwordconfirm.dart';
//import 'package:loginpage/rectest.dart';

class home extends StatelessWidget{
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  var _formKey = GlobalKey<FormState>();
@override
Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        //padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
        child: Column(
           children: [
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 280,
                height: 65,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                  onPressed: (){
                    print("Raised");
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>complaint()));

                  },
                  color : Colors.red,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text("Complaint" , style: TextStyle(fontSize: 35.0,color: Colors.white),),
                ),
              ),
             SizedBox(
               height: 110,
             ),
             SizedBox(
               width: 280,
               height: 65,
               child: RaisedButton(
                 padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                 onPressed: (){
                   print("Raised");
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>passwordconfirm()));

                     //return Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));

                 },
                 color : Colors.lightGreen,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 child: Text("Edit Details" , style: TextStyle(fontSize: 35.0,color: Colors.white),),
               ),
             ),
             SizedBox(
               height: 110,
             ),
             SizedBox(
               width: 280,
               height: 65,
               child: RaisedButton(
                 padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                 onPressed: (){
                   print("Raised");
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>history()));
                 },
                 color : Colors.blue,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 child: Text( "History" , style: TextStyle(fontSize: 35.0,color: Colors.white),),
               ),
             ),

             SizedBox(
               height: 110,
             ),

             SizedBox(
               width: 280,
               height: 65,
               child: RaisedButton(
                 padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                 onPressed: (){
                   print("Raised");
                   //Navigator.push(context, MaterialPageRoute(builder: (context)=>message()));
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context) => message()));
                 },
                 color : Colors.yellow,
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                 child: Text( "Message" , style: TextStyle(fontSize: 35.0,color: Colors.black),),
               ),
             ),
        ],
        ),
      )
      )
    );
  }
}
