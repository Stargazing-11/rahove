// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(210, 71, 118, 230),
              Color.fromARGB(230, 142, 84, 233),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(),
                Text('Home'),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.settings,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Hello Soliana'),
            Text('Let\'s check our status'),
            Container(
              height: 220,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    height: 200,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 252, 252, 252)),
                    child: Column(
                      children: [
                        Row(children: [
                          Row(
                            children: [
                              Image.asset('assets/images/feres.png'),
                              Column(
                                children:[
                                Text(
                                  'Feres Transport'
                                ),
                                Text(
                                  'Http://www.feres.com'
                                )],
                              )
                            ],
                          ),
                          IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz_rounded))
                        ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
