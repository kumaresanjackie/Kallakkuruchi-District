import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/administrative_setup.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/administrativesetuphome.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/district_profile.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/egovernance.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/elected_representative.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/watar_bodies.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/whoswho.dart';
import 'package:kallakkurichi/Subwidgets/divederline.dart';
import 'package:kallakkurichi/Subwidgets/expandable.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class AboutKallai extends StatefulWidget {
  AboutKallai({Key? key}) : super(key: key);

  @override
  _AboutKallaiState createState() => _AboutKallaiState();
}

class _AboutKallaiState extends State<AboutKallai> {
  List title = [
    [
      'District Profile',
      DistrictProfile(),
    ],
    [
      "Who's Who",
      Whoswho(),
    ],
    [
      ''' Administrative
        Setup''',
      AdministrativesetupHome(),
    ],
    [
      '''         Elected 
    Representative ''',
      ElectedRepresentative(),
    ],
    [
      "Water Bodies",
      WaterBodies(),
    ],
    [
      "e-Governance",
      Egovernance(),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Kallai"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                // decoration: BoxDecoration(color: Colors.red),
                height: 310,
                width: 400,
                child: ExpandableTutorial()),
            Dividerlinee(),
            Container(
              // decoration: BoxDecoration(color: Colors.blue),
              height: 300,
              width: 400,
              child: GridView.builder(
                  itemCount: title.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 5 / 5,
                    crossAxisSpacing: 0.2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => title[index][1]));
                        },
                        child: Container(
                          child: ShapeOfView(
                              shape: PolygonShape(
                                numberOfSides: 8,
                              ),
                              child: Container(
                                  color: Colors.amberAccent,
                                  child: Center(child: Text(title[index][0])))),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
