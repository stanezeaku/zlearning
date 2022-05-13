// Copyright Stanely Ezeaku © 2022.

import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/forgot_password.dart';
import 'package:flutter/material.dart';

class AccCreateSuccess extends StatefulWidget {
  const AccCreateSuccess({Key? key}) : super(key: key);

  static const String page_id = "Account Create Success";

  @override
  _AccCreateSuccessState createState() => _AccCreateSuccessState();
}

class _AccCreateSuccessState extends State<AccCreateSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/success.png',
              fit: BoxFit.cover,
              height: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Account Created \n Successfully!',
              style: headText(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ForgotPassword()));
              },
              child: const Text(
                'Forgot Password',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
          ],
        ),
      ),
    );
  }
}
