import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/login.pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta',
      
      theme: ThemeData(
        
        primarySwatch: Colors.deepOrange,
      ),
      home: LoginPage(),
    );
  }
}