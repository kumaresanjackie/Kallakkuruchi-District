import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class Sliderr extends StatefulWidget {
  Sliderr({Key? key}) : super(key: key);

  @override
  _SliderrState createState() => _SliderrState();
}

class _SliderrState extends State<Sliderr> {
  List images = [
    ['assets/images/slider/1.jpg', "Kalvarayan Hills"],
    ['assets/images/slider/2.jpg', "Gomukhi Dam"],
    ['assets/images/slider/3.jpg', "Summer Festival Special"],
    ['assets/images/slider/4.jpg', "Megham Falls"],
    ['assets/images/slider/5.jpg', "Gomukhi River"]
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Swiper(
          layout: SwiperLayout.CUSTOM,
          customLayoutOption: CustomLayoutOption(startIndex: -1, stateCount: 3)
              .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
            Offset(-370.0, -40.0),
            Offset(0.0, 0.0),
            Offset(370.0, -40.0)
          ]),
          itemWidth: 300.0,
          itemHeight: 200.0,
          autoplay: true,
          autoplayDelay: 5000,
          itemBuilder: (context, index) {
            return Stack(children: [
              Image.asset(
                images[index][0],
                height: 200,
                width: 300,
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(images[index][1]))
            ]);
          },
          itemCount: images.length),
    );
  }
}
