// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/acc_create_success.dart';
import 'package:zlearning/pages/log_in.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  static const String page_id = "Register";

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _value = false;
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
                  Icons.people,
                  size: 35,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Create an Account',
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
                  'Username',
                  const Icon(Icons.person_outline),
                ),
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                    activeColor: appColor,
                    value: _value,
                    onChanged: (bool? _value) {
                      setState(() {
                        this._value = _value!;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'I hearby agree to the ',
                      style: const TextStyle(
                          fontFamily: 'regular', color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Terms of service \n and Privacy Policy',
                          style: const TextStyle(
                            fontFamily: 'medium',
                            color: appColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // Navigator.push(
                              //     context,
                              //     new MaterialPageRoute(
                              //         builder: (context) => new signIn()));
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccCreateSuccess()));
                },
                child: const Text(
                  'Create Account',
                  style: TextStyle(fontFamily: 'medium'),
                ),
                style: simpleButton(),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(
                      fontFamily: 'regular', color: Colors.white),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Log In',
                      style: const TextStyle(
                        fontFamily: 'medium',
                        color: appColor,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LogIn()));
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
