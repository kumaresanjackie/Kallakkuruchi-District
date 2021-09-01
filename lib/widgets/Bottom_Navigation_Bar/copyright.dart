import 'package:flutter/material.dart';

class Copyright extends StatefulWidget {
  Copyright({Key? key}) : super(key: key);

  @override
  _CopyrightState createState() => _CopyrightState();
}

class _CopyrightState extends State<Copyright> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Copyright"),
    );
  }
}
