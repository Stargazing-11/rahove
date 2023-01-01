// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

Widget bottomNavBar(_controller, changeTab) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    margin: EdgeInsets.only(bottom: 10, left: 25, right: 20),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Color.fromARGB(255, 255, 255, 255),
      boxShadow: [
        BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(4, 4)),
      ],
    ),
    child: TabBar(
      onTap: (index) {
        changeTab(index);
        print(index);
      },
      indicatorColor: Color.fromARGB(255, 151, 71, 255),
      controller: _controller,
      tabs: [
        Tab(
          icon: Icon(
            Icons.house_outlined,
            color: Color.fromARGB(255, 151, 71, 255),
          ),
        ),
        Tab(
          icon: Icon(
            Icons.bar_chart,
            color: Colors.black54,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.article_outlined,
            color: Colors.black54,
          ),
        ),
        Tab(
          icon: Icon(
            Icons.person,
            color: Colors.black54,
          ),
        ),
      ],
    ),
  );
}
