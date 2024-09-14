import 'package:flutter/material.dart';
import 'package:progect_iti/login/login.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login("s@gmail.com","1111")  ,
    );

  }
}

