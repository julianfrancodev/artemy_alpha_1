import 'package:circular_border_hero/circular_border_hero.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ImageSwipper extends StatefulWidget {
  String tag;

  ImageSwipper({@required this.tag});

  @override
  _ImageSwipperState createState() => _ImageSwipperState();
}

class _ImageSwipperState extends State<ImageSwipper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: CircularBorderHero(
        radius: 0,
        tag: widget.tag,
        child: Swiper(
          itemCount: 3,
          pagination: SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                  color: Colors.white30,
                  activeColor: Colors.white,
                  activeSize: 10,
                  size: 8,
                  space: 10)),
          itemBuilder: (context, index) {
            return ClipRRect(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40), bottomRight: Radius.circular(40)),
              child: Image(
                image: AssetImage(
                  'assets/images/image${index + 1}.jpg',
                ),
                fit: BoxFit.fill,
              ),
            );
          },
        ),
      ),
    );
  }
}
