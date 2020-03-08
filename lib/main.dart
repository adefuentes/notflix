import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notflix/pages/home.dart';
import 'package:notflix/pages/movie.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: NetflixHome(),
    );
  }

}