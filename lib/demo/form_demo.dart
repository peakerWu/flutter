import 'dart:ffi';

import 'package:flutter/material.dart';

class FormDemo extends StatelessWidget {
  const FormDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.orange
        ),
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RegisterFormDemo()
            ],
          ),
        ),
      ),
    );
  }
}

class RegisterFormDemo extends StatefulWidget {
  RegisterFormDemo({Key key}) : super(key: key);

  _RegisterFormDemoState createState() => _RegisterFormDemoState();
}

class _RegisterFormDemoState extends State<RegisterFormDemo> {
  final registerFormKey = GlobalKey<FormState>();
  String username, password;
  bool autovalidate = false;

  void _submitRegisterForm () {
    if(registerFormKey.currentState.validate()) {
      registerFormKey.currentState.save();
      debugPrint('username: $username');
      debugPrint('password: $password');

      Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text('Register...'),
        )
      );
    } else {
      autovalidate = true;
    }
  }

  String validateUsername (value) {
    if(value.isEmpty) {
      return 'Username is required';
    }
    return null;
  }

  String validatePassword (value) {
    if(value.isEmpty) {
      return 'Password is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: registerFormKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            onSaved: (value) {
              username = value;
            },
            decoration: InputDecoration(
              labelText: 'Username',
              helperText: '',
            ),
            validator: validateUsername,
            autovalidate: autovalidate,
          ),
          TextFormField(
            onSaved: (value) {
              password = value;
            },
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              helperText: ''
            ),
            validator: validatePassword,
            autovalidate: autovalidate,
          ),
          SizedBox(
            height: 32.0,
          ),
          Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text('Register', style: TextStyle(color: Colors.white),),
              color: Theme.of(context).accentColor,
              elevation: 0.0,
              onPressed: _submitRegisterForm,
            ),
          )
        ],
      ),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key key}) : super(key: key);

  _TextFieldDemoState createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    // textEditingController.text = 'text';
    textEditingController.addListener(
      () {
        debugPrint(textEditingController.text);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
       child: TextField(
         controller: textEditingController,
        //  onChanged: (value) => debugPrint('input：$value'),
         onSubmitted: (value) => debugPrint('submit：$value'),
         decoration: InputDecoration(
           icon: Icon(Icons.subject),
           labelText: 'Title',
           hintText: 'Enter the post title',
           filled: true,
           border: OutlineInputBorder(),

         ),
       ),
    );
  }
}

class ThemeDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
    );
  }
}