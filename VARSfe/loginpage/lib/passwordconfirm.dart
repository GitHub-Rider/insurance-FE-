// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:loginpage/editdetails.dart';

class passwordconfirm extends StatefulWidget {
  @override
  //State<MyHomePage>
  _Mypasswordconfirm createState() => _Mypasswordconfirm();
}
class _Mypasswordconfirm extends State<passwordconfirm>{
  bool _secureText = true;
  //TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //String _passwordError;

  var _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Enter You Password"),
        ),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
    child: Form(
        key: _formKey,
    child: Column(
    children: [

      SizedBox(
        height: 50,
      ),
      Text( 'Enter Your Password', textAlign: TextAlign.center , textScaleFactor: 2.1, ),

      SizedBox(
        height: 190,
      ),

      TextFormField(
        controller: _passwordController,
        decoration: InputDecoration(
          hintText: "Enter Password",
          labelText: "Password",
          // errorText: _passwordError,
          labelStyle: TextStyle(fontSize: 24, color: Colors.black),
          border: OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
                _secureText ? Icons.remove_red_eye : Icons.security),
            onPressed: () {
              setState(() {
                _secureText = !_secureText;
              });
            },
          ),
          //   validator: (value){

          // },
        ),
        validator: (value) {
          if (value!.isEmpty) {
            return "please enter password";
          } else
                () {
              return "Password incorrect";
            };
          return null;
        },
        // keyboardType: TextInputType.text,
        // keyboardType: TextInputType.number,
        obscureText: _secureText,
        //maxLength: 10,
        //maxLines: 3,
      ),
      SizedBox(
        height: 15,
      ),
      Container(
        margin: EdgeInsets.all(25),
        child: RaisedButton(
          child: Text(
            '>',
            style: TextStyle(fontSize: 20.0),
          ),
          color: Colors.blueAccent,
          textColor: Colors.white,
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => editdetails()));
            } else {
              print('Enter Correct Info');
            }
            //return Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
          },
        ),
      )
        ]
    )
    )
    )
    );
  }
}