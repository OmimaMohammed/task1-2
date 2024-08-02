import 'package:flutter/foundation.dart';

class PasswordVisibilityProvider extends ChangeNotifier {
  bool _obscureText = true;

  bool get obscureText => _obscureText;

  void toggleVisibility() {
    _obscureText = !_obscureText;
    notifyListeners();
  }
}



// password_visiable.dart






// password_visiable.dart



// // Newsletter Checkbox Provider
// class NewsletterCheckboxProvider extends ChangeNotifier {
//   bool _isChecked = false;

//   bool get isChecked => _isChecked;

//   void toggleCheckbox() {
//     _isChecked = !_isChecked;
//     notifyListeners();
//   }
// }