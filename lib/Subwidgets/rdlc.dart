import 'package:flutter/material.dart';
import 'package:kallakkurichi/Subwidgets/Rdlc/constituency.dart';
import 'package:kallakkurichi/Subwidgets/Rdlc/developement.dart';
import 'package:kallakkurichi/Subwidgets/Rdlc/local_bodies.dart';
import 'package:kallakkurichi/Subwidgets/Rdlc/revenue.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';

class Rdlc extends StatelessWidget {
  const Rdlc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List colors = [
      [
        Colors.lightBlueAccent,
        'Revenue',
        'Division : 2',
        'Taluks   : 6',
        '    Villages : 562',
        Revenue()
      ],
      [
        Colors.orange,
        'Developements',
        'Blocks : 9',
        'Panchayat Villages : 412',
        '',
        Developement()
      ],
      [
        Colors.green,
        'Local Bodies',
        'Municipalities : 1',
        'Town Panchayats : 7',
        '',
        LocalBodies()
      ],
      [
        Colors.red,
        'Constituencies',
        'Assembly : 4',
        'Lok Sabha : 1',
        '',
        Constituency()
      ],
    ];
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      height: 220,
      width: 400,
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 5 / 3,
            crossAxisSpacing: 0.1,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => colors[index][5]));
                },
                child: Container(
                  // decoration: BoxDecoration(color: Colors.orangeAccent),
                  child: ShapeOfView(
                      shape: RoundRectShape(
                        borderRadius: BorderRadius.circular(0),
                        borderColor: Colors.white, //optional
                        borderWidth: 2, //optional
                      ),
                      child: Container(
                          decoration: BoxDecoration(
                            color: colors[index][0],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Center(
                                        child: Text(
                                      colors[index][1],
                                      style: TextStyle(fontSize: 20),
                                    ))),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1),
                                child: Text(colors[index][2]),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1),
                                child: Text(colors[index][3]),
                              ),
                              Padding(
                                padding: EdgeInsets.all(1),
                                child: Text(colors[index][4]),
                              )
                            ],
                          ))),
                ),
              ),
            );
          }),
    );
  }
}
