import 'package:flutter/material.dart';
import 'package:flutter1/pages/instagram.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            backScreen(),
            Positioned(
              child: footer(),
              bottom: 20.0,
              left: 20.0,
              right: 20.0,
            )
          ],
        ));
  }

  Widget backScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 100.0,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            children: [
              Expanded(child: button('Login', Colors.white)),
              SizedBox(
                width: 10.0,
              ),
              Expanded(child: button('Sign Up', Colors.blue)),
            ],
          ),
        ),
      ],
    );
  }

  Widget footer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Or via social media:",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 20.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.,
          children: [
            icon_button(Colors.white, Icon(Icons.ac_unit)),
            SizedBox(
              width: 10.0,
            ),
            icon_button(Colors.white, Icon(Icons.agriculture))
          ],
        ),
      ],
    );
  }

  Widget button(String text, Color color) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50.0),
      child: Container(
        width: 150,
        height: 50.0,
        color: color,
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 16.0),
        )),
      ),
    );
  }

  Widget icon_button(Color color, Icon icon) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Container(
        width: 30,
        height: 30.0,
        color: color,
        child: icon,
        alignment: Alignment.center,
      ),
    );
  }
}
