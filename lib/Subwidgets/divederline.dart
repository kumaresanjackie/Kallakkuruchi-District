import 'package:flutter/material.dart';

class Dividerlinee extends StatelessWidget {
  const Dividerlinee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 15.0),
            child: Divider(
              color: Colors.black,
              height: 50,
            )),
      ),
      Icon(Icons.sentiment_very_satisfied),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 15.0, right: 10.0),
            child: Divider(
              color: Colors.black,
              height: 50,
            )),
      ),
    ]);
  }
}
