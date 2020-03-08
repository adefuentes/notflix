import 'package:flutter/material.dart';
import 'package:notflix/views/category_row.dart';
import 'package:notflix/views/genres_list.dart';
import 'package:notflix/views/header.dart';
import 'package:notflix/views/header_carousel.dart';
import 'package:notflix/views/navigation_bar.dart';

class NetflixHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NetflixHomeState();
}

List<String> genres = [
  'HORROR',
  'THRILLER',
  'ROMANTIK',
  'ACTION',
  'COMEDY',
  'SCI-FI'
];

List<String> movies = [
  'assets/movie1.jpg',
  'assets/movie2.jpg',
  'assets/movie3.jpg',
  'assets/movie4.jpg',
  'assets/movie5.jpg',
  'assets/movie6.jpg',
];

class _NetflixHomeState extends State<NetflixHome> {

  @override
  Widget build(BuildContext context) {

    double mainWidth = MediaQuery.of(context).size.width - 60;

    return Scaffold(
      body: Row(children: <Widget>[
        Navigation.getNavigationBar(false),
        Container(
          width: mainWidth,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 8),
              Header.getHeader(),
              SizedBox(height: 16),
              HeaderCarousel.create(context, movies, mainWidth),
              SizedBox(height: 16),
              GenresList.create(genres, mainWidth),
              SizedBox(height: 16),
              CategoryRow.create('Trending', movies, mainWidth),
              CategoryRow.create('For you', movies, mainWidth),
              CategoryRow.create('Most viewed', movies, mainWidth),
              CategoryRow.create('Because have already seen The Wicher', movies, mainWidth),
            ],
          ),
        ),
      ],),
    );
  }

}