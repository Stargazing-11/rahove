// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

Widget button(child, func) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
    ),
    child: ElevatedButton(
      onPressed: func,
      child: Text(
        child,
        style: TextStyle(fontSize: 18),
      ),
      style: ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(
          Color.fromARGB(255, 151, 71, 255),
        ),
        minimumSize: MaterialStatePropertyAll(Size(239, 55)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
    ),
  );
}
