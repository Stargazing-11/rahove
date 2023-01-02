// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, use_full_hex_values_for_flutter_colors, unused_field, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rahove/Screens/Components/bottomNavBAr.dart';

class UserInfo extends StatefulWidget {
  UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> with TickerProviderStateMixin {
  TabController? _controller;

  TabController? _controller2;
  int currentIndex = 0;
  void initState() {
    _controller2 = TabController(length: 1, vsync: this, initialIndex: 0);
    _controller =
        TabController(length: 4, vsync: this, initialIndex: currentIndex);
  }

  List settings = [
    [
      "Notification",
      Icon(
        Icons.notifications,
        color: Color.fromARGB(255, 151, 71, 255),
      ),
      4
    ],
    [
      "Reports",
      Icon(
        Icons.circle_outlined,
        color: Color.fromARGB(255, 151, 71, 255),
      ),
      2
    ],
    [
      "Email",
      Icon(
        Icons.email,
        color: Color.fromARGB(255, 151, 71, 255),
      ),
      3
    ],
    [
      "Terms and Services",
      Icon(
        Icons.article_outlined,
        color: Color.fromARGB(255, 151, 71, 255),
      ),
      1
    ],
    [
      "Accessebility",
      Icon(
        Icons.accessibility,
        color: Color.fromARGB(255, 151, 71, 255),
      ),
      4
    ],
    [
      "Log out",
      Icon(
        Icons.logout,
        color: Color.fromARGB(255, 151, 71, 255),
      ),
      4
    ],
  ];
  var top = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            snap: false,
            pinned: true,
            floating: false,
            expandedHeight: 330,
            stretch: true,
            collapsedHeight: 260,
            flexibleSpace: FlexibleSpaceBar(
              // stretchModes: [StretchMode.blurBackground],
              titlePadding: EdgeInsets.all(0),
              centerTitle: true,
              expandedTitleScale: 1.0,
              title: LayoutBuilder(
                builder: (ctx, cons) => Opacity(
                  opacity: cons.biggest.height < 270 ? 1.0 : 0.0,
                  child: unStreched(),
                ),
              ),
              background: streched2(),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Color.fromARGB(255, 228, 228, 228),
                      ),
                    ),
                    Text('Settings'),
                    Expanded(
                      child: Divider(
                        color: Color.fromARGB(255, 228, 228, 228),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return setting(
                    settings[index][0], settings[index][1], settings[index][2]);
              },
              childCount: settings.length,
            ),
          ), //SliverChildBuildDelegate
        ],
      ),
      bottomNavigationBar: bottomNavBar(_controller),
    );
  }

  Container unStreched() {
    return Container(
      constraints: BoxConstraints(maxHeight: 250, minHeight: 190),
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
            children: [Icon(Icons.arrow_back_ios), SizedBox(), Text('Back')],
          ),
          ClipRRect(
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
            borderRadius: BorderRadius.circular(100),
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
            child: Text(
              'Edit Profile',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white),
              padding: MaterialStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget streched2() {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                SizedBox(),
                Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(139, 217, 217, 217),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Liya Dereje',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      'Liyadereje2@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 151, 71, 255)),
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.all(20),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/liya.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

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
