import 'package:flutter/material.dart';

Widget dashedHorizontalLine() {
  return Row(
    children: [
      for (int i = 0; i < 20; i++)
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  color: Color.fromARGB(255, 82, 77, 77),
                  thickness: 2,
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
    ],
  );
}
