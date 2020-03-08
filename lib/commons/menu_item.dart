import 'package:flutter/material.dart';

class MenuItem {

  static Container getMenuButton(bool active, IconData icon) {

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(right: BorderSide(color: active ? Colors.red : Colors.black, width: 3)),
      ),
      child: Icon(icon, color: active ? Colors.white : Colors.grey)
    );

  }

}