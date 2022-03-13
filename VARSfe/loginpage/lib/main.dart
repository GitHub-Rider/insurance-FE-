// ignore_for_file: unused_field, deprecated_member_use, prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_final_fields
import 'dart:ui';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  //State<MyHomePage>
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _secureText = true;
  late String _email, _password;
  //bool autovalidate = true;
  //bool validator = true ;
  TextEditingController _passwordController = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  //String _passwordError;

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Vehicle Registration Number",
                      labelText: "Vehicle Number",
                      labelStyle: TextStyle(fontSize: 24, color: Colors.black),
                      border: OutlineInputBorder()),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "please enter registration number";
                    }
                    if (value.trim().length < 6 ) {
                      return 'Registration must contain only 7 or 8 characters';
                    }
                    if(value.trim().length > 7 ) {
                      return 'Registration must contain only 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 100,
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
                    }
                    else
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
                  height: 17,
                ),

                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: RaisedButton(
                    child: Text(
                      'LogIn',
                      style: TextStyle(fontSize: 20.0),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      } else {
                        print('Enter Correct Info');
                      }
                      //return Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
