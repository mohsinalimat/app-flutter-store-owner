import 'package:aniron/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class ImageUploadWidget extends StatefulWidget {
  final Widget body;
  ImageUploadWidget({this.body}) : super();

  @override
  _ImageUploadWidgetState createState() => _ImageUploadWidgetState();
}

class _ImageUploadWidgetState extends State<ImageUploadWidget> {
  Image pickedImage;
  File _image;
  Widget imageWidget;

  final picker = ImagePicker();

  Future getImageFromGallery() async {
    // pick picture from gallery
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    // display image
    if (image != null) {
      setState(() {
        _image = image;
        pickedImage = Image.file(
          image,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        );
        imageWidget = pickedImage;
      });
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          getImageFromGallery();
        },
        child: imageWidget);
  }
}
