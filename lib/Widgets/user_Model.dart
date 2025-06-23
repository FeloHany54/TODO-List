import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:todo/Widgets/user.dart';

class UserModel extends ChangeNotifier {
  // بخلينا نتابع اي تغييرات
  ImagePicker imagePicker = ImagePicker();

  User? _user;
  User? get user => _user; // نجيب كل الداتا من فايل user

  Future<void> imageSelector(ImageSource source) async {
    XFile? image = await imagePicker.pickImage(source: source);
    if (image != null) {
      if (_user != null) {
        _user?.image = File(image.path);
      } else {
        _user = User(name: "Felo Hany", image: File(image.path));
      }
      notifyListeners(); // instead of set state
    }
  }

  void removeImage() {
    _user?.image = null;

    notifyListeners();
  }
}
