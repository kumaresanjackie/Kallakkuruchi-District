import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

class ElectedRepresentative extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List data = [
      [
        "assets/images/mlamp/kmp.jpg",
        'MP(Lok Sabha)',
        "14.Kallakurichi",
        "Shri Pon Gautham Sigamani, DMK",
        "drsigas@yahoo.co.in",
        '9600011115',
        Colors.green,
      ],
      [
        "assets/images/mlamp/uptmla.jpg",
        'MLA in Kallakurichi District',
        "77.Ulundurpettai",
        "Thiru. A.J. MANIKANNAN, DMK",
        "mlaulundurpettai@tn@gov.in",
        '',
        Colors.red,
      ],
      [
        "assets/images/mlamp/rvmmla.jpeg",
        'MLA in Kallakurichi District',
        "78.Rishivandiyam",
        "Thiru. K. KARTHIKEYAN, DMK",
        "mlarishivandiyam@tn.gov.in",
        '9443101268',
        Colors.green,
      ],
      [
        "assets/images/mlamp/snkmla.jpg",
        'MLA in Kallakurichi District',
        "79.Sankarapuram",
        "Thiru. T. UDHAYASURIYAN, DMK",
        "mlasankarapuram@tn.gov.in",
        '9443497724',
        Colors.green,
      ],
      [
        "assets/images/mlamp/kkrmla.png",
        'MLA in Kallakurichi District',
        "80.Kallakurichi(SC)",
        "Thiru. M. SENTHILKUMAR, AIADMK",
        "mlakallakurichi@tn.gov.in",
        '',
        Colors.red,
      ],
    ];
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Elected Representative"),
        centerTitle: true,
        brightness: Brightness.dark,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: EdgeInsets.all(_w / 50),
          physics:
              BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              delay: Duration(milliseconds: 100),
              child: SlideAnimation(
                duration: Duration(milliseconds: 2500),
                curve: Curves.fastLinearToSlowEaseIn,
                verticalOffset: -250,
                child: ScaleAnimation(
                  duration: Duration(milliseconds: 1500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: Container(
                    margin: EdgeInsets.only(bottom: _w / 20),
                    height: _w / 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset(data[index][0]),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(data[index][1])),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(data[index][2]),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(data[index][3]),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                  color: data[index][6],
                                  onPressed: () async {
                                    await launch(data[index][5]);
                                  },
                                  icon: Icon(Icons.phone)),
                              IconButton(
                                  color: Colors.orange,
                                  onPressed: () async {
                                    await launch(data[index][4]);
                                  },
                                  icon: Icon(Icons.mail_outline)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class ElectedRepresentative extends StatelessWidget {
//   const ElectedRepresentative({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Elected Representatives"),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: Column(
//             children: [
//               Container(
//                 height: 200,
//                 width: 400,
//                 child: Image.asset("assets/images/mlamp/kmp.jpg"),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
