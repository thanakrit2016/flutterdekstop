import 'package:flutter/material.dart';
import 'package:flutterdekstop/screens/register.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showLogo() {
    return Container(
      width: 120.0,
      height: 120.0,
      child: Image.asset('images/logo.png'),
    );
  }

  Widget showAppName() {
    return Text(
      'Baw SRU-COOP',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        fontFamily: 'Mali',
        color: Colors.blue.shade700,
      ),
    );
  }

  Widget signInButton() {
    return RaisedButton(
      color: Colors.blue.shade700,
      child: Text(
        'Sign In',
        style: TextStyle(color: Colors.white),
      ),
      onPressed: () {},
    );
  }

  Widget signUpButton() {
    return OutlineButton(
      child: Text('Sign Up'),
      onPressed: () {
        print('You Click Sign Up');
        MaterialPageRoute materialPageRoute =
            MaterialPageRoute(builder: (BuildContext context) => Register());
        Navigator.of(context).push(materialPageRoute);
      },
    );
  }

  Widget showButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        signInButton(),
        SizedBox(
          width: 4.0,
        ),
        signUpButton(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SRU-COOP',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.amber,
      ),
      drawer: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 55.0, 0.0, 0.0),
        child: Drawer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Home')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.ac_unit_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text('About')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.room_service),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Servicesggggggggggggggggggggggggg')
                ],
              ),
              Row(
                children: [
                  Icon(Icons.contact_mail_rounded),
                  SizedBox(
                    width: 10,
                  ),
                  Text('Contact')
                ],
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: [Colors.white, Colors.yellow.shade600],
              radius: 1.0,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                showLogo(),
                showAppName(),
                SizedBox(
                  height: 10.0,
                ),
                showButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
