import 'package:flutter/material.dart';
import 'package:flutter1/pages/login.dart';

void main() => runApp(MeroApp());

class MeroApp extends StatelessWidget {
  const MeroApp({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MeroApp",
      home: LoginPage(),
    );
  }
}
