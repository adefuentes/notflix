import 'package:flutter/material.dart';
import 'package:notflix/commons/movie_poster.dart';

class CategoryRow {

  static Widget create(String title, List<String> list, double width) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(title, style: TextStyle(fontWeight: FontWeight.w500),),
              Icon(Icons.arrow_forward)
            ],
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 240,
          width: width,
          child: ListView.builder(
            padding: EdgeInsets.only(left: 8),
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return MoviePoster.create(list[index], 150, 8);
            },
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

}