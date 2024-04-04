import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class image extends StatefulWidget {
  const image({super.key});

  @override
  State<image> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<image> {
  File? _pickedImage;
  void _pickeedImage(ImageSource source) async {
    try {
      final _pickedImage2 = await ImagePicker().pickImage(source: source);
      if (_pickedImage2 == null) return;
      setState(() {
        _pickedImage = File(_pickedImage2.path);
      });
    } catch (a) {
      print("error:$a");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: _pickedImage == null
            ? Text("NO image selected")
            : Image.file(_pickedImage!),
      ),
      floatingActionButton: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () => _pickeedImage(ImageSource.camera),
            tooltip: "pick from camera",
            child: Icon(Icons.camera),
          ),
          SizedBox(
            height: 50
          ),
          FloatingActionButton(
            onPressed: () => _pickeedImage(ImageSource.gallery),
            tooltip: "picked from gallery",
            child: Icon(Icons.photo_library),
          ),
        ],
      ),
    );
  }
}
