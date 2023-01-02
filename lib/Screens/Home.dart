// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, sized_box_for_whitespace, unnecessary_null_comparison, prefer_if_null_operators, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:rahove/Screens/Components/bottomNavBar.dart';
import 'package:rahove/Screens/UserInfo.dart';
import 'package:rahove/Screens/helpers/operations.dart';
import 'package:rahove/Screens/helpers/scrollObject.dart';

// import 'package:dotted_line/dotted_line.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  final recents = [
    [
      "Yonas Tesfaye",
      "+25193909908",
      "+1000.2",
      "2023-01-01 16:17",
      "yonas.jpg"
    ],
    [
      "Mihret Belay",
      "+25193909908",
      "+700.2",
      "2023-01-01 16:17",
      "mihret.jpg"
    ],
    [
      "Soliana Abrha",
      "+25193909908",
      "+200.2",
      "2023-01-01 16:17",
      "soliana.jpg"
    ],
    [
      "Dawit Tsige",
      "+25193909908",
      "+1000.2",
      "2022-12-31 16:17",
      "solomon.jpg"
    ],
    [
      "Dawit Tsige",
      "+25193909908",
      "+1000.2",
      "2022-12-31 16:17",
      "solomon.jpg"
    ],
  ];
  TabController? _controller;
  TabController? _controller2;

  int currentIndex = 0;
  void initState() {
    _controller2 =
        TabController(length: 1, vsync: this, initialIndex: currentIndex);
    _controller =
        TabController(length: 4, vsync: this, initialIndex: currentIndex);
  }

  void changeTab(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.only(
                left: 15,
                top: 20,
                right: 10,
                bottom: 10,
              ),
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
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => UserInfo(),
                            ),
                          );
                        },
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/liya.jpg',
                            width: 50,
                            height: 50,
                          ),
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.now_widgets_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hello Soliana',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Let\'s check our status',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 220,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: ((context, index) => container()),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TabBarView(
                  controller: _controller2,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Recent Operations',
                          style: TextStyle(
                            color: Color.fromARGB(255, 151, 71, 255),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          padding:
                              EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                          color: Color.fromRGBO(133, 133, 133, 1),
                          child: Text(
                            "Today",
                            style: TextStyle(fontSize: 10),
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: recents.length,
                            itemBuilder: ((context, index) => operation(
                                recents[index][0],
                                recents[index][1],
                                recents[index][2],
                                recents[index][3],
                                picture: recents[index][4] != null
                                    ? recents[index][4]
                                    : null)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: bottomNavBar(_controller, context));
  }
}

int dateDifference(date) {
  return (DateTime.now().difference(DateTime.parse(date)).inHours / 24).round();
}
