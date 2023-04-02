import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({Key? key}) : super(key: key);

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      child: CarouselSlider(
        options: CarouselOptions(
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          viewportFraction: 1,
          aspectRatio: 0.5,
          pageSnapping: true,
          onPageChanged: (index, _) {},
        ),
        items: [
          SizedBox(
            width: 345,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.asset('assets/Mask Group 5.png',
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),);
  }
}
