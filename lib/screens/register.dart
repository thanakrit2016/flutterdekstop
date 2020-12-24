import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
// Explicit

// Method
  Widget registerButton() {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You Click Upload');
      },
    );
  }

  Widget nameText() {
    return TextFormField();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register'),
          actions: [registerButton()],
          backgroundColor: Colors.amber,
        ),
        body: ListView(
          padding: EdgeInsets.all(30.0),
          children: [
            Column(
              children: [nameText()],
            ),
            Column(
              children: [nameText()],
            ),
            nameText(),
            nameText(),
          ],
        ));
  }
}
