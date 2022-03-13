// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';

class editdetails extends StatefulWidget {
  @override
  //State<MyHomePage>
  _Myeditdetailsconfirm createState() => _Myeditdetailsconfirm();
}

class _Myeditdetailsconfirm extends State<editdetails>{
  //final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //late String _password ;
  //late String subscription;
  String dropdownvalue = 'Vip';

  var items =  ['Vip','Full Option (Premium)','Full Option','Third Party'];

  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordController1 = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  //get child => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
        title: Text("Edit Profile"),
        ),
        body: Padding(

          padding: const EdgeInsets.all(8.0),

              child: Form(
                  key: _formKey,

                  child: Column(

                      children: [

                            SizedBox(
                             height: 108,
                            ),

                        TextFormField(
                          controller: _passwordController,
                          decoration: InputDecoration(
                              hintText: "",
                              labelText: "New Password",
                              labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter password";
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 88,
                        ),

                        TextFormField(
                          controller: _passwordController1,
                          decoration: InputDecoration(
                              hintText: "",
                              labelText: "Confirm Password",
                              labelStyle: TextStyle(fontSize: 18, color: Colors.black),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "please enter password";
                            }
                            if(_passwordController.text != _passwordController1.text){
                              return "passwords dont match";
                            }
                            return null;
                          },
                        ),

                        SizedBox(
                          height: 80,
                        ),

                        //DropdownButton(items: subscription, onChanged: onChanged),
                        DropdownButtonFormField(
                          value: dropdownvalue,
                          dropdownColor: Colors.white,

                          decoration: InputDecoration(

                            border: OutlineInputBorder(

                              borderRadius: const BorderRadius.all(
                                const Radius.circular(20.0),
                              ),
                            ),
                          ),
                          icon: Icon(Icons.keyboard_arrow_down),

                          items:items.map((String items) {
                            return DropdownMenuItem(
                                value: items,
                                child: Text(items)
                            );
                          }
                          ).toList(),
                          onChanged: (newvalue) => setState(() => dropdownvalue = newvalue as String),


                        ),

                        SizedBox(
                          height: 38,
                        ),

                        Container(
                          margin: EdgeInsets.all(25),
                          child: RaisedButton(
                            child: Text('Set Save', style: TextStyle(fontSize: 20.0),),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: (){
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>home()));
                              } else {
                                print('Enter Correct Info');
                              }
                            },
                          ),
                        ),
                       // Container(

                        //),
                       ]

                  )

              )
        )
    );
    //DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(value,: subscription);
  }
}