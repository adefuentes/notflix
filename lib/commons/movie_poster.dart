import 'package:flutter/material.dart';

class MoviePoster {

  static Widget create(String src, [double width, double margin]) {

    return Center(
      child: ClipRect(
        child: Container(
          width: width ?? null,
          margin: EdgeInsets.all(margin ?? 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(src),
              fit: BoxFit.cover
            )
          ),
        ),
      )
    );

  }

}