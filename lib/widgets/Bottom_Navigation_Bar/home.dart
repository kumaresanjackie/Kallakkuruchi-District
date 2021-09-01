import 'package:flutter/material.dart';
import 'package:kallakkurichi/Subwidgets/divederline.dart';
import 'package:kallakkurichi/Subwidgets/list_title.dart';
import 'package:kallakkurichi/Subwidgets/rdlc.dart';
import 'package:kallakkurichi/Subwidgets/slider.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kallakkurichi"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Sliderr(), Dividerlinee(), TitleList(), Rdlc()],
        ),
      ),
    );
  }
}
