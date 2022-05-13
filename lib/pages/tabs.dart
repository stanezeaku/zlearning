// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/account.dart';
import 'package:zlearning/pages/categories.dart';
import 'package:zlearning/pages/home.dart';
import 'package:zlearning/pages/my_course.dart';
import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  static const String page_id = "Tabs";

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: ahcolor,
        bottomNavigationBar: (TabBar(
          labelColor: appColor,
          unselectedLabelColor: const Color.fromARGB(255, 185, 196, 207),
          labelPadding: const EdgeInsets.symmetric(horizontal: 0),
          labelStyle: const TextStyle(
            fontFamily: 'regular',
            fontSize: 16,
          ),
          onTap: (int index) => setState(() => _currentIndex = index),
          tabs: [
            Tab(
              icon: Icon(
                Icons.home_outlined,
                color: _currentIndex == 0
                    ? Colors.teal
                    : const Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.star_outline,
                color: _currentIndex == 1
                    ? Colors.teal
                    : const Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.play_circle_outline,
                color: _currentIndex == 2
                    ? Colors.teal
                    : const Color.fromARGB(255, 185, 196, 207),
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_outline,
                color: _currentIndex == 3
                    ? Colors.teal
                    : const Color.fromARGB(255, 185, 196, 207),
              ),
            ),
          ],
        )),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Home(),
            Categories(),
            MyCourse(),
            Account(),
          ],
        ),
      ),
    );
  }
}
