





import 'dart:io';

import 'package:image_picker/image_picker.dart';



Future getImage(ImageSource source) async {
 XFile? pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
 return pickedFile;
}

