// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rahove/Screens/LogIn.dart';
import 'package:rahove/Screens/helpers/button.dart';
import 'package:rahove/Screens/helpers/field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rahove/Screens/helpers/iconButton.dart';
import 'package:social_login_buttons/social_login_buttons.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: TextStyle(
              color: Color.fromARGB(255, 151, 71, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text('become a member of our platform'),
          SizedBox(
            height: 18,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 39),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                field('Full Name'),
                SizedBox(
                  height: 15,
                ),
                field('Email'),
                SizedBox(
                  height: 15,
                ),
                field('Password'),
                SizedBox(
                  height: 5,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forget password',
                    style: TextStyle(color: Colors.black38),
                  ),
                  onHover: (value) {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          button('Sign up'),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  height: 1,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
              SizedBox(
                width: 9,
              ),
              Text('Sign up With'),
              SizedBox(
                width: 9,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(right: 5),
                  height: 1,
                  decoration: BoxDecoration(color: Colors.black),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              iconButton(FontAwesomeIcons.google, Colors.green),
              SizedBox(
                width: 50,
              ),
              iconButton(FontAwesomeIcons.facebook, Colors.blue),
              SizedBox(
                width: 50,
              ),
              iconButton(FontAwesomeIcons.apple, Colors.black),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?'),
              TextButton(
                child: Text(
                  'Log In',
                  style: TextStyle(
                    color: Color.fromARGB(255, 151, 71, 255),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                  );
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
