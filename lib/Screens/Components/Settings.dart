// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget setting(text, icon, number) {
  return Container(
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 233, 231, 231),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        icon,
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          number.toString(),
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        )
      ],
    ),
  );
}
