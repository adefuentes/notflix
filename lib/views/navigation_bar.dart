import 'package:flutter/material.dart';
import 'package:notflix/commons/menu_item.dart';

class Navigation {
  
  static Container getNavigationBar([bool push]) {

    Widget assetWidget = (push) ? Icon(Icons.arrow_back, color: Colors.white) : Image.asset('assets/logo.png');

    return Container(
        width: 60,
        color: Colors.black,
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: assetWidget,
          ),
          Expanded(
            child: Container()
          ),
          MenuItem.getMenuButton(true, Icons.home),
          MenuItem.getMenuButton(false, Icons.search),
          MenuItem.getMenuButton(false, Icons.slideshow),
          MenuItem.getMenuButton(false, Icons.save_alt),
          MenuItem.getMenuButton(false, Icons.menu),
        ],)
      );

  }

}