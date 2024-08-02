import 'package:flutter/material.dart';
import 'package:flutter_application_2/feed.dart';
import 'package:flutter_application_2/newletter_checkbox.dart';
import 'package:flutter_application_2/password_visiable.dart';
import 'package:provider/provider.dart';
import 'signup.dart';

void main() {
  

  
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PasswordVisibilityProvider()),
        ChangeNotifierProvider(create: (_) => NewsletterCheckboxProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignupPage(),
      ),
    ),
  );
}


