import 'package:flutter/material.dart';
import 'package:flutterdekstop/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SRU_COOP',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Home(),
    );
  }
}
