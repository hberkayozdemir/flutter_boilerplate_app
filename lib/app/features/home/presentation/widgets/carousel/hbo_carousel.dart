import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dessert_and_more/config/carousel_config.dart';
import 'package:flutter/material.dart';

class HboCarousel extends StatelessWidget {
  const HboCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> carouselList = [_carosuel(0), _carosuel(1), _carosuel(2)];
    return Container(
        child: CarouselSlider(
            options: CarouselOptions(
              disableCenter: true,
            ),
            items: carouselList));
  }

  Widget _carosuel(int index) {
    return SizedBox(
      height: 350,
      width: double.infinity,
      child: Stack(children: [
        Image.network(cauroselImageList[index]),
        AutoSizeText(cauroselTitleList[index])
      ]),
    );
  }
}
