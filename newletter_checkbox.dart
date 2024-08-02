import 'package:flutter/foundation.dart';
class NewsletterCheckboxProvider extends ChangeNotifier {
  bool _isChecked = false;

  bool get isChecked => _isChecked;

  void toggleCheckbox() {
    _isChecked = !_isChecked;
    notifyListeners();
  }
} 


// newletter_checkbox.dart


