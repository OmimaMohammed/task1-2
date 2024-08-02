/*import 'package:flutter/material.dart';
import 'package:flutter_application_2/newletter_checkbox.dart';
import 'package:flutter_application_2/password_visiable.dart';
import 'package:provider/provider.dart';

//import 'password_visibility_provider.dart';
//import 'newsletter_checkbox_provider.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.close,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    InputFile(label: "Name"),
                    InputFile(label: "Email"),
                    PasswordInputField(),
                    SizedBox(height: 10),
                    NewsletterCheckbox(),
                    SizedBox(height: 20),
                    Container(
                      width: 343,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: Colors.green,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputFile extends StatefulWidget {
  final String label;
  final bool obscureText;

  InputFile({required this.label, this.obscureText = false});

  @override
  _InputFileState createState() => _InputFileState();
}

class _InputFileState extends State<InputFile> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        FocusScope.of(context).requestFocus(_focusNode);
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 343,
        height: 50,
        child: TextField(
          focusNode: _focusNode,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            labelText: widget.label,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordVisibilityProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 343,
            height: 50,
            child: TextField(
              obscureText: provider.obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: TextButton(
                  onPressed: provider.toggleVisibility,
                  child: Text(
                    provider.obscureText ? 'Show' : 'Hide',
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NewsletterCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NewsletterCheckboxProvider>(
      builder: (context, provider, child) {
        return Container(
          width: 343,
          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "I would like to receive your newsletter and other promotional information",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            value: provider.isChecked,
            onChanged: (bool? value) {
              provider.toggleCheckbox();
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        );
      },
    );
  }
} */



import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'password_visiable.dart';
import 'newletter_checkbox.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.close,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    InputFile(label: "Name"),
                    InputFile(label: "Email"),
                    PasswordInputField(),
                    SizedBox(height: 10),
                    NewsletterCheckbox(),
                    SizedBox(height: 20),
                    Container(
                      width: 343,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: Colors.green,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputFile extends StatefulWidget {
  final String label;
  final bool obscureText;

  InputFile({required this.label, this.obscureText = false});

  @override
  _InputFileState createState() => _InputFileState();
}

class _InputFileState extends State<InputFile> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        FocusScope.of(context).requestFocus(_focusNode);
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 343,
        height: 50,
        child: TextField(
          focusNode: _focusNode,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            labelText: widget.label,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordVisibilityProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 343,
            height: 50,
            child: TextField(
              obscureText: provider.obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: TextButton(
                  onPressed: provider.toggleVisibility,
                  child: Text(
                    provider.obscureText ? 'Show' : 'Hide',
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NewsletterCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NewsletterCheckboxProvider>(
      builder: (context, provider, child) {
        return Container(
          width: 343,
          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "I would like to receive your newsletter and other promotional information",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            value: provider.isChecked,
            onChanged: (bool? value) {
              provider.toggleCheckbox();
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        );
      },
    );
  }
}




/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'password_visiable.dart';
import 'newletter_checkbox.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.close,
                      color: Colors.grey.shade400,
                      size: 30,
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Sign Up",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    InputFile(label: "Name"),
                    InputFile(label: "Email"),
                    PasswordInputField(),
                    SizedBox(height: 10),
                    NewsletterCheckbox(),
                    SizedBox(height: 20),
                    Container(
                      width: 343,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 60,
                        onPressed: () {},
                        color: Colors.green,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InputFile extends StatefulWidget {
  final String label;
  final bool obscureText;

  InputFile({required this.label, this.obscureText = false});

  @override
  _InputFileState createState() => _InputFileState();
}

class _InputFileState extends State<InputFile> {
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        FocusScope.of(context).requestFocus(_focusNode);
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        width: 343,
        height: 50,
        child: TextField(
          focusNode: _focusNode,
          obscureText: widget.obscureText,
          decoration: InputDecoration(
            labelText: widget.label,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}

class PasswordInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<PasswordVisibilityProvider>(
      builder: (context, provider, child) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            width: 343,
            height: 50,
            child: TextField(
              obscureText: provider.obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                suffixIcon: TextButton(
                  onPressed: provider.toggleVisibility,
                  child: Text(
                    provider.obscureText ? 'Show' : 'Hide',
                    style: TextStyle(
                      color: Colors.lightGreen,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class NewsletterCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<NewsletterCheckboxProvider>(
      builder: (context, provider, child) {
        return Container(
          width: 343,
          child: CheckboxListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "I would like to receive your newsletter and other promotional information",
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            value: provider.isChecked,
            onChanged: (bool? value) {
              provider.toggleCheckbox();
            },
            controlAffinity: ListTileControlAffinity.leading,
          ),
        );
      },
    );
  }
}*/

