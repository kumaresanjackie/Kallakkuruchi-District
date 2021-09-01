import 'package:flutter/material.dart';

class Directory extends StatefulWidget {
  Directory({Key? key}) : super(key: key);

  @override
  _DirectoryState createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Directory"),
    );
  }
}
