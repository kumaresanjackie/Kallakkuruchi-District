import 'package:flutter/material.dart';
import 'package:kallakkurichi/Subwidgets/About_Kallai/administrative_setup.dart';
import 'package:kallakkurichi/Subwidgets/Rdlc/developement.dart';
import 'package:kallakkurichi/Subwidgets/Rdlc/local_bodies.dart';
import 'package:kallakkurichi/Subwidgets/Rdlc/revenue.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class AdministrativesetupHome extends StatelessWidget {
  const AdministrativesetupHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Administrative Setup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ShapeOfView(
                      elevation: 4,
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.45,
                      shape: DiagonalShape(
                          position: DiagonalPosition.Right,
                          direction: DiagonalDirection.Left,
                          angle: DiagonalAngle.deg(angle: 5)),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdminidtrativeSetup()));
                        },
                        child: Container(
                            color: Colors.red[300],
                            child:
                                Center(child: Text("District Collectorate"))),
                      )),
                  ShapeOfView(
                      elevation: 4,
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.45,
                      shape: DiagonalShape(
                          position: DiagonalPosition.Left,
                          direction: DiagonalDirection.Left,
                          angle: DiagonalAngle.deg(angle: 5)),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Revenue()));
                          },
                          child: Container(
                              color: Colors.red[300],
                              child: Center(child: Text("Revenue")))))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ShapeOfView(
                      elevation: 4,
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.45,
                      shape: DiagonalShape(
                          position: DiagonalPosition.Right,
                          direction: DiagonalDirection.Left,
                          angle: DiagonalAngle.deg(angle: 5)),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Developement()));
                          },
                          child: Container(
                              color: Colors.red[300],
                              child: Center(child: Text("Development"))))),
                  ShapeOfView(
                      elevation: 4,
                      height: 200,
                      width: MediaQuery.of(context).size.width * 0.45,
                      shape: DiagonalShape(
                          position: DiagonalPosition.Left,
                          direction: DiagonalDirection.Left,
                          angle: DiagonalAngle.deg(angle: 5)),
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LocalBodies()));
                          },
                          child: Container(
                              color: Colors.red[300],
                              child: Center(child: Text("Local Bodies")))))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
