// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/tabs.dart';
import 'package:flutter/material.dart';

class OrderSuccess extends StatefulWidget {
  const OrderSuccess({Key? key}) : super(key: key);

  static const String page_id = "Order Success";

  @override
  _OrderSuccessState createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
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
              'assets/images/pass.png',
              fit: BoxFit.cover,
              height: 250,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Your Order has been \n Placed Successfully!',
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
                    context, MaterialPageRoute(builder: (context) => Tabs()));
              },
              child: const Text(
                'View My Course',
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
