// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Container unStreched(ctx) {
  return Container(
    constraints: BoxConstraints(maxHeight: 260, minHeight: 190),
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromARGB(255, 71, 119, 230),
        Color.fromARGB(255, 141, 84, 233),
      ], begin: Alignment.topLeft),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
              ),
              onPressed: () {
                Navigator.pop(ctx);
              },
            ),
            Text('Back')
          ],
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                    strokeAlign: StrokeAlign.outside),
                borderRadius: BorderRadius.circular(100)),
            child: Image(
              image: AssetImage('assets/images/liya.jpg'),
              width: 90,
              height: 90,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Liya Dereje',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          'Liya Dereje2@gmail.com',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.white),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
            ),
          ),
          child: Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
