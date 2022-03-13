/*import 'dart:async';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class takePictureScreen extends StatefulWidget {

  @override
  //State<MyHomePage>
  _takePictureScreen createState() => _takePictureScreen();
}


class _takePictureScreen extends State<takePictureScreen>{

  late File _image;
  ImagePicker pick = ImagePicker();
  Future getImage(bool isCam) async{
    File image;

    if(isCam){
      image = (await pick.pickImage(source: ImageSource.camera)) as File;
    }
    else{
      image= (await pick.pickImage(source: ImageSource.gallery)) as File;
    }
    setState((){
      _image = image;
    });
  }

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
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.insert_drive_file),
                        onPressed: (){
                          getImage(false);
                        },
                      ),
                      SizedBox(height: 10.0,),

                      IconButton(
                        icon: Icon(Icons.camera_alt),
                        onPressed: (){
                          getImage(true);
                        },
                      ),
                     _image == null? Container() : Image.file(_image, height: 300.0,width: 300.0,),
                    ]
                )
            )
        )
    );
  }
}



 */