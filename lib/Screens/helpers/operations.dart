import 'package:flutter/material.dart';

Widget operation(name, phone, money, time, {picture}) {
  return Container(
    padding: EdgeInsets.only(top: 10, right: 7, bottom: 10, left: 7),
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 228, 228, 228),
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 1.0,
        ),
      ),
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  child: Image.asset(
                    picture != null
                        ? 'assets/images/${picture}'
                        : 'assets/images/avater.png',
                    width: 35,
                    height: 35,
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 14),
                    ),
                    Text(
                      phone,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(money + "ETB"),
                Text(time),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
