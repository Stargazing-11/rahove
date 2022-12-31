// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

Widget field(type) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        type,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        height: 37,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 244, 244, 244),
            border: Border.all(
                color: Color.fromARGB(255, 244, 244, 244), width: 2.0),
            borderRadius: BorderRadius.circular(12.5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      )
    ],
  );
}
