import 'package:flutter/material.dart';

class GenresList {

  static create(List<String> genres, double width) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 50,
      width: width,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16),
        scrollDirection: Axis.horizontal,
        itemCount: genres.length,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text(
              genres[index],
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          );
        },
      ),
    );
  }

}