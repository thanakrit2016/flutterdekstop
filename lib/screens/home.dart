import 'package:flutter/material.dart';

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
    return Text('Baw SRU-COOP');
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
      drawer: Drawer(
        child: ListView(
          children: [
            Row(
              children: [Icon(Icons.home), Text('Home')],
            ),
            Row(
              children: [Icon(Icons.ac_unit_rounded), Text('About')],
            ),
            Row(
              children: [Icon(Icons.room_service), Text('Services')],
            ),
            Row(
              children: [Icon(Icons.contact_mail_rounded), Text('Contact')],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              showLogo(),
              showAppName(),
              showAppName(),
              showAppName(),
            ],
          ),
        ),
      ),
    );
  }
}
