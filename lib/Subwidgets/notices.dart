import 'package:flutter/material.dart';
// import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/floating_action_button.dart';

class Notices extends StatefulWidget {
  Notices({Key? key}) : super(key: key);

  @override
  _NoticesState createState() => _NoticesState();
}

class _NoticesState extends State<Notices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Notices"),
      // floatingActionButton: FloattingButton(),
    );
  }
}
