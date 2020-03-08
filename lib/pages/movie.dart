import 'package:flutter/material.dart';
import 'package:notflix/views/navigation_bar.dart';

class MoviePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MoviePageState();
}

List<String> genres = [
  'HORROR',
  'THRILLER',
  'ROMANTIK',
  'ACTION',
  'COMEDY',
  'CRIME',
  'DRAMA',
  'SCI-FI'
];

class _MoviePageState extends State<MoviePage> {

  @override
  Widget build(BuildContext context) {
    var mainWidth = MediaQuery.of(context).size.width - 60;
    return Scaffold(
      body: Row(
        children: <Widget>[
          Navigation.getNavigationBar(true),
          Container(
            width: mainWidth,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    MovieHeader(),
                    MoviewDescription()
                  ],
                )
              ],
            )
          )
        ],
      ),
    );
  }
}

class MoviewDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 16),
        Text(
          'Joker',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700)
        ),
        SizedBox(height: 8),
        Text('THRILLER . DRAMA . CRIME'),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('2018', style: TextStyle(fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CircleAvatar(radius: 1.5, backgroundColor: Colors.black,),
            ),
            Text('12+', style: TextStyle(fontWeight: FontWeight.w500)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: CircleAvatar(radius: 1.5, backgroundColor: Colors.black,),
            ),
            Text('97 min', style: TextStyle(fontWeight: FontWeight.w500)),
          ],
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              children: <Widget>[
                Icon(Icons.add, color: Colors.red),
                SizedBox(height: 8),
                Text('My list')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.favorite_border, color: Colors.red),
                SizedBox(height: 8),
                Text('Rate')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.share, color: Colors.red),
                SizedBox(height: 8),
                Text('Share')
              ],
            ),
            Column(
              children: <Widget>[
                Icon(Icons.file_download, color: Colors.red),
                SizedBox(height: 8),
                Text('Download')
              ],
            )
          ],
        )
      ],
    );
  }
}

class MovieHeader extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Container(
          height: 280,
          margin: EdgeInsets.only(bottom: 25),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/joker.jpg'),
              fit: BoxFit.cover
            )
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.red.withOpacity(0.35),
          radius: 35,
          child: CircleAvatar(
            backgroundColor: Colors.red,
            radius: 30,
            child: Icon(
              Icons.play_arrow,
              size: 35,
              color: Colors.white
            ),
          )
        )
      ],
    );
  }

}