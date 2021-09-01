import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class ExpandableTutorial extends StatefulWidget {
  @override
  _ExpandableTutorialState createState() => _ExpandableTutorialState();
}

class _ExpandableTutorialState extends State<ExpandableTutorial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Card1(),
          // Card2(),
        ],
      ),
    );
  }
}

String loremIpsum =
    ''' Kallakurichi District is announced as 33rd district by bifurcating Viluppuram district on the floor of Assembly by Hon’ble Chief Minister on 8th January 2019. Later the new Kallakurichi District was created as per G.O.(MS).No.424 and 425 Revenue and Disaster Management Department, Revenue Administration Wing, {RA 1(1)} Section, Dated:12.11.2019. Subsequently, the Hon’ble Chief Minister inaugurated Kallakurichi as 34th district (Tenkasi inaugurated as 33rd) on 26.11.2019 in a grand inaugural function.

    The district consists of 2 Revenue divisions with 6 taluks, consisting of 562 Revenue villages in 24 firkas. The district consists of 9 development blocks covering 412 village panchayats. Kallakurichi, the headquarters of the district is located along NH 79 (Ulundurpet – Salem). Salem, Trichy and Pondicherry are the nearest airports.

    The district is an agrarian with paddy, maize, sugarcane, black gram etc., as major crops. The district is mainly rainfed / tank irrigated along with Gomukhi and Manimuktha dams.

    Kalvarayan hills spread across 550.70 Sq km, is a major attraction of the district. The tribal population dominated hills have Periyar falls, Megham falls, Sirukalur falls and Chinnathirupathi temple. Very famous temples such as Ulagalantha Perumal temple, Veerattaneshwarar temple and Kabilar hillock in Tirukoilur, Sri Lakshmi Narasimmar temple, Parikkal in Ulundurpet taluk, Adhirangan Ranganathaswamy temple, Thiruvarangam and Arthanareeswarar temple, Rishivandiyam in Sankarapuram taluk are situated in this district. ''';

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Card(
          child: Column(
            children: [
              SizedBox(
                height: 200,
                width: 300,
                child: Container(
                  child: Image.asset(
                    'assets/images/others/kallaie.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              ScrollOnExpand(
                child: ExpandablePanel(
                  theme: ExpandableThemeData(
                      iconColor: Colors.red,
                      iconSize: 30,
                      tapBodyToCollapse: true,
                      tapBodyToExpand: true),
                  header: Padding(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "History",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  expanded: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Text(loremIpsum,
                            softWrap: true,
                            overflow: TextOverflow.fade,
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: 0.7,
                                wordSpacing: 0.8,
                                fontSize: 20)),
                      ),
                    ],
                  ),
                  collapsed: Text(loremIpsum,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.black)),
                  builder: (_, collapsed, expanded) {
                    return Padding(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      child: Expandable(
                        collapsed: collapsed,
                        expanded: expanded,
                        theme: const ExpandableThemeData(crossFadePoint: 0),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
