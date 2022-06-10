





import 'dart:io';

import 'package:image_picker/image_picker.dart';



Future<dynamic?>getImage() async {
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);
return image!.path;
}

