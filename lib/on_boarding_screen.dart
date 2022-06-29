// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:login_register_screen/login_screen.dart';
import 'package:login_register_screen/register.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<PageViewModel> pages = [
    PageViewModel(
      title: "Get food delivery to your doorstep asap",
      body: "We have young and professional delivery team",
      footer: Container(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          child: Text(
            "Get Started",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.teal)),
        ),
      ),
      image: Center(
        child: Image.asset('asset/Logored.png'),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: "Buy Any Food from your fav restaurant",
      body: "we are adding you fav restaurant around your area",
      footer: Container(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
          child: Text("Get Start"),
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.teal)),
        ),
      ),
      image: Center(
        child: Image.asset('asset/logored2.png'),
      ),
      decoration: PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFFEF9A9A)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              child: Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Color(0xFFEF9A9A),
          activeSize: Size.square(20),
          activeColor: Color(0xFFEF9A9A),
        ),
        showDoneButton: true,
        done: Text(
          "Starting To Sign Up ?",
          style: TextStyle(fontSize: 10, color: Colors.teal),
        ),
        showNextButton: true,
        next: Icon(
          Icons.arrow_forward,
          size: 20,
          color: Colors.teal,
        ),
        onDone: () {
          onDone(context);
        },
      ),
    );
  }

  void onDone(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginScreen(),
      ),
    );
  }
}
