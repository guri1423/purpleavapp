





import 'dart:io';

import 'package:image_picker/image_picker.dart';



Future getImage(ImageSource source) async {
 XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
 return pickedFile;
}

Future  getImage1() async {
 XFile? pickedFile1 = await ImagePicker().pickImage(source: ImageSource.camera);
 return pickedFile1;

 }


