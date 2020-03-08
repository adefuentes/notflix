import 'package:flutter/material.dart';
import 'package:flutter_multi_carousel/carousel.dart';
import 'package:notflix/commons/movie_poster.dart';

class HeaderCarousel {

  static create(BuildContext context, List<String> items, double width) {
    return Carousel(
      height: 450,
      width: width,
      type: 'slideswiper',
      showIndicator: false,
      axis: Axis.horizontal,
      children: List.generate(
        items.length,
        (index) => MoviePoster.create(items[index])
      ),
    );
  }

}