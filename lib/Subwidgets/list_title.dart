import 'package:flutter/material.dart';
import 'package:kallakkurichi/Subwidgets/aboutkallai.dart';
import 'package:kallakkurichi/Subwidgets/departments.dart';
import 'package:kallakkurichi/Subwidgets/directory.dart';
import 'package:kallakkurichi/Subwidgets/documents.dart';
import 'package:kallakkurichi/Subwidgets/expandable.dart';
import 'package:kallakkurichi/Subwidgets/notices.dart';
import 'package:kallakkurichi/Subwidgets/rdlc.dart';
import 'package:kallakkurichi/Subwidgets/tourism.dart';
// import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/aboutus.dart';
// import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/copyright.dart';
// import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/home.dart';
// import 'package:kallakkurichi/widgets/Bottom_Navigation_Bar/more_apps.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class TitleList extends StatefulWidget {
  TitleList({Key? key}) : super(key: key);

  @override
  _TitleListState createState() => _TitleListState();
}

class _TitleListState extends State<TitleList> {
  List title = [
    "About Kallai",
    'Departments',
    'Directory',
    'Tourism',
    'Documents',
    "Notices"
  ];
  final pages = [
    AboutKallai(),
    Departments(),
    Directory(),
    Tourism(),
    // Documents(),
    Rdlc(),
    // Notices()
    // Card1()
    ExpandableTutorial()
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.blue),
      height: 130,
      width: 400,
      child: GridView.builder(
          itemCount: title.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 6 / 3,
            crossAxisSpacing: 0.4,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                highlightColor: Colors.red,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => pages[index]));
                },
                child: Container(
                  // decoration: BoxDecoration(color: Colors.orangeAccent),
                  child: ShapeOfView(
                      shape: RoundRectShape(
                        borderRadius: BorderRadius.circular(12),
                        borderColor: Colors.white, //optional
                        borderWidth: 2, //optional
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                            Colors.lightBlueAccent,
                            Colors.deepPurple
                          ])),
                          child: Center(child: Text(title[index])))),
                ),
              ),
            );
          }),
    );
  }
}
