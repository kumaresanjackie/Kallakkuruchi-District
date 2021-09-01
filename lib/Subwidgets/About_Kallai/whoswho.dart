import 'package:flutter/material.dart';
import 'package:shape_of_view_null_safe/shape_of_view_null_safe.dart';
import 'package:url_launcher/url_launcher.dart';

class Whoswho extends StatelessWidget {
  const Whoswho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List image = [
      [
        'assets/images/whoswho/ias.jpg',
        'Thiru. P.N. Sridhar,',
        'IAS',
        'District Collector.',
        '''
        District Collector Office, Kallakurichi
        ''',
        "tel:04151222000",
        "mailto:collr-kki@gov.in?subject=Complaint or Suggestions&body=Write Your Complaint....",
      ],
      [
        'assets/images/whoswho/ips.png',
        'Thiru. Ziaul Haque,',
        'IPS',
        '''Superindendant 
        of Police.''',
        '''
        District Police Office, Kallakurichi
        ''',
        "tel:04151221313",
        "mailto:kkispecialbranch@gmail.com?subject=Complaint or Suggestions&body=Write Your Complaint....",
      ],
      [
        'assets/images/whoswho/dro.jpg',
        'Thiru. C.Vijaybabu,',
        "DRO",
        'District Revenue Officer.',
        '''
        District Collectorate, Kallakurichi
        ''',
        "tel:04151228800",
        "mailto:drokki@gmail.com?subject=Complaint or Suggestions&body=Write Your Complaint....",
      ],
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Who's Who"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                        child: ShapeOfView(
                          shape: BubbleShape(
                              position: BubblePosition.Right,
                              arrowPositionPercent: 0.5,
                              borderRadius: 20,
                              arrowHeight: 10,
                              arrowWidth: 10),
                          child: Image.asset(
                            image[index][0],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        height: 235,
                        width: 180,
                        child: ShapeOfView(
                            shape: CutCornerShape(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text(
                                    image[index][2],
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  Divider(
                                    height: 2,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      image[index][1],
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      image[index][3],
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Divider(
                                    height: 2,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      IconButton(
                                          color: Colors.green,
                                          iconSize: 28,
                                          onPressed: () async {
                                            await launch(image[index][5]);
                                          },
                                          icon: Icon(Icons.phone)),
                                      IconButton(
                                          color: Colors.red,
                                          iconSize: 28,
                                          onPressed: () async {
                                            await launch(image[index][6]);
                                          },
                                          icon: Icon(Icons.mail))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "Address",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  Text(image[index][4])
                                ],
                              ),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}
