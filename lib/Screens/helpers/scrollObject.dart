// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:rahove/Screens/helpers/dashedLine.dart';
Container container() {
  final points = [
    [0, 100],
    [1, 100],
    [2, 100],
    [3, 100],
    [4, 300],
    [5, 100],
    [6, 100],
    [7, 200],
    [8, 100],
    [9, 300],
    [10, 100],
    [11, 100],
    [12, 100],
    [13, 300],
    [14, 300],
    [15, 100],
    [16, 450],
    [17, 100],
    [18, 100],
    [19, 300],
    [20, 100],
    [21, 100],
  ];
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      height: 200,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 252, 252, 252)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 16.0,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/images/feres.png',
                          width: 30,
                          height: 30,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Feres Transport',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Http://www.feres.com',
                        style: TextStyle(
                            color: Color.fromARGB(255, 150, 146, 146),
                            fontWeight: FontWeight.w100,
                            fontSize: 11),
                      )
                    ],
                  )
                ],
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz_rounded))
            ],
          ),
          Divider(
            color: Color.fromARGB(255, 32, 32, 32),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('500'),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: dashedHorizontalLine(),
              ),
            ],
          ),
          Expanded(
            child: LineChart(LineChartData(
                borderData: FlBorderData(show: false),
                gridData: FlGridData(show: false),
                extraLinesData: ExtraLinesData(extraLinesOnTop: false),
                minX: 0,
                minY: 0,
                maxY: 500,
                titlesData: FlTitlesData(show: false),
                lineBarsData: [
                  LineChartBarData(
                    color: Colors.green,
                    spots: points
                        .map((point) =>
                            FlSpot(point[0].toDouble(), point[1].toDouble()))
                        .toList(),
                    isCurved: false,
                    dotData: FlDotData(show: false),
                  ),
                ])),
          ),
          Row(
            children: [
              Text('0'),
              SizedBox(
                width: 8,
              ),
              Expanded(
                child: dashedHorizontalLine(),
              ),
            ],
          )
        ],
      ),
    );
  }
