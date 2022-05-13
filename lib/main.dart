// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/about_instructor.dart';
import 'package:zlearning/pages/acc_create_success.dart';
import 'package:zlearning/pages/account.dart';
import 'package:zlearning/pages/categories.dart';
import 'package:zlearning/pages/forgot_password.dart';
import 'package:zlearning/pages/home.dart';
import 'package:zlearning/pages/log_in.dart';
import 'package:zlearning/pages/my_course.dart';
import 'package:zlearning/pages/order_success.dart';
import 'package:zlearning/pages/payment.dart';
import 'package:zlearning/pages/register.dart';
import 'package:zlearning/pages/slider.dart';
import 'package:zlearning/pages/tabs.dart';
import 'package:zlearning/pages/top_courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: ahcolor, // navigation bar color
      statusBarColor: ahcolor, // status bar color
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ZLearning',
      theme: ThemeData(
        primaryColor: appColor,
        fontFamily: 'regular',
        colorScheme: ThemeData().colorScheme.copyWith(
            primary: appColor,
            secondary: appColor,
            brightness: Brightness.dark),
      ),
      home: const CustomSlider(),
      routes: {
        CustomSlider.page_id: (context) => const CustomSlider(),
        LogIn.page_id: (context) => const LogIn(),
        Register.page_id: (context) => const Register(),
        AccCreateSuccess.page_id: (context) => const AccCreateSuccess(),
        ForgotPassword.page_id: (context) => const ForgotPassword(),
        Tabs.page_id: (context) => const Tabs(),
        Home.page_id: (context) => const Home(),
        Categories.page_id: (context) => const Categories(),
        MyCourse.page_id: (context) => const MyCourse(),
        Account.page_id: (context) => const Account(),
        TopCourses.page_id: (context) => const TopCourses(),
        AboutInstructer.page_id: (context) => const AboutInstructer(),
        Payment.page_id: (context) => const Payment(),
        OrderSuccess.page_id: (context) => const OrderSuccess(),
      },
    );
  }
}
