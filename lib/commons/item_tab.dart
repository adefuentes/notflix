import 'package:flutter/material.dart';

class ItemTab {

  static getTab(String title, bool selected) {
    return (
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Row(children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CircleAvatar(radius: selected ? 3 : 0, backgroundColor: Colors.red,),
          ),
          Text(title, style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18
            ),
          ),
        ],)
      )
    );
  }

}