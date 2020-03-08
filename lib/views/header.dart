import 'package:flutter/material.dart';
import 'package:notflix/commons/item_tab.dart';


class Header {

  static getHeader() {

    return (
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ItemTab.getTab('Films', true),
          ItemTab.getTab('Series', false),
          ItemTab.getTab('My list', false),
        ],
      )
    );

  }

}