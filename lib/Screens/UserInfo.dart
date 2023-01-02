// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, use_full_hex_values_for_flutter_colors, unused_field, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rahove/Screens/Components/bottomNavBar.dart';
import 'package:rahove/Screens/helpers/streched.dart';
import 'package:rahove/Screens/helpers/unStreched.dart';

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
                  child: unStreched(context),
                ),
              ),
              background: streched(context),
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
      bottomNavigationBar: bottomNavBar(_controller, context),
    );
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
}
