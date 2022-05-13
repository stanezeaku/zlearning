// Copyright Stanely Ezeaku © 2022.
import 'package:carousel_slider/carousel_slider.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/log_in.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  static const String page_id = "Forgot Password";

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final CarouselController _controller = CarouselController();

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return CarouselSlider(
      options: CarouselOptions(
        onPageChanged: ((index, reason) {
          setState(() {
            _currentIndex = index;
            print(index);
          });
        }),
        height: double.infinity,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: false,
        reverse: false,
        autoPlay: false,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      carouselController: _controller,
      items: [1, 2, 3, 4].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (i == 1)
                    forgotContainer()
                  else if (i == 2)
                    otpContainer()
                  else if (i == 3)
                    changeContainer()
                  else if (i == 4)
                    successContainer()
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget forgotContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: const Icon(
                Icons.key_outlined,
                size: 35,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Forgot Password',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'A handful of model sentense structures',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputIconText(
                'Phone',
                const Icon(Icons.phone_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage();
              },
              child: const Text(
                'Continue',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'We sent a',
                  style: TextStyle(fontFamily: 'regular', color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Verification Code',
                      style: TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                    ),
                    TextSpan(
                      text: ' to your Phone Number',
                      style:
                          TextStyle(fontFamily: 'regular', color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget otpContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: const Icon(
                Icons.key_outlined,
                size: 35,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Enter a Code',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'We sent a verification code to your phone number',
                  style: TextStyle(fontFamily: 'regular', color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' (+971) 565 548 121',
                      style: TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OTPTextField(
              otpFieldStyle: OtpFieldStyle(
                  focusBorderColor: appColor, enabledBorderColor: Colors.grey),
              length: 4,
              width: MediaQuery.of(context).size.width,
              fieldWidth: 60,
              style: const TextStyle(
                fontSize: 18,
                color: appColor,
              ),
              textFieldAlignment: MainAxisAlignment.spaceAround,
              fieldStyle: FieldStyle.box,
              onCompleted: (pin) {
                print("Completed: " + pin);
              },
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage();
              },
              child: const Text(
                'Change Password',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 1, color: appColor))),
              child: const Text(
                'Resend Code',
                style: TextStyle(color: appColor),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget changeContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width: 1, color: Colors.grey.shade300),
              ),
              child: const Icon(
                Icons.key_outlined,
                size: 35,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Change Password',
              textAlign: TextAlign.center,
              style: headText(),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Your password legth consist of \n 6-characters',
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputIconText(
                'New Password',
                const Icon(Icons.visibility_off_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: simpleInputIconText(
                'Confirm Password',
                const Icon(Icons.visibility_off_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                _controller.nextPage();
              },
              child: const Text(
                'Save Password',
                style: TextStyle(fontFamily: 'medium'),
              ),
              style: simpleButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget successContainer() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Image.asset(
              'assets/images/pass.png',
              fit: BoxFit.cover,
              height: 150,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Password Changed \n Successfully!',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LogIn()));
              },
              child: const Text(
                'Sign in',
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
