// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/forgot_password.dart';
import 'package:zlearning/pages/register.dart';
import 'package:zlearning/pages/tabs.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  static const String page_id = "Log In";

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: SingleChildScrollView(
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
                  Icons.lock,
                  size: 35,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome Back!',
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
                  'Email Id',
                  const Icon(Icons.email_outlined),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 10,
                    child: TextField(
                      obscureText: true,
                      decoration: simpleInputIconText('Password',
                          const Icon(Icons.visibility_off_outlined)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border:
                            Border.all(width: 1, color: Colors.grey.shade300),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 16),
                      child: const Icon(Icons.fingerprint),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        border: Border(
                      bottom: BorderSide(color: appColor, width: 1),
                    )),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ForgotPassword()));
                      },
                      child: const Text(
                        'Forgot Password ?',
                        style: TextStyle(color: appColor),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Tabs()));
                },
                child: const Text(
                  'Log In',
                  style: TextStyle(fontFamily: 'medium'),
                ),
                style: simpleButton(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('(Or)'),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google.png',
                      height: 20,
                      width: 20,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text('Log In with Google')
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: const Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.grey.shade300)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: const TextStyle(
                      fontFamily: 'regular', color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Register',
                      style: const TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Register()));
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
