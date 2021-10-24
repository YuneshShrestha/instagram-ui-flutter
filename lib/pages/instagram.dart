import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter1/pages/feed.dart';
import 'package:flutter1/pages/post.dart';

class InstaPage extends StatefulWidget {
  const InstaPage({key}) : super(key: key);

  @override
  _InstaPageState createState() => _InstaPageState();
}

class _InstaPageState extends State<InstaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram",
          style: TextStyle(color: Colors.black, fontStyle: FontStyle.italic),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.camera_alt,
          color: Colors.black,
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Transform.rotate(
                angle: -pi / 6,
                child: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
              ))
        ],
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 5.0, left: 3.0, right: 3.0),
          child: ListView.builder(
              itemCount: getFeed().length,
              itemBuilder: (context, index) {
                return PostCart(
                  feed: getFeed()[index],
                );
              })),
    );
  }
}
