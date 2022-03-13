import 'package:flutter/material.dart';

class message extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text("Entry Status Information"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
                child: Column(
                    children: []
                )
            )
        )
    );
  }
}