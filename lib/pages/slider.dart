// Copyright Stanely Ezeaku © 2022.
import 'package:flutter_svg/svg.dart';
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/log_in.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  static const String page_id = "Slider Screen";

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class Customshape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class _CustomSliderState extends State<CustomSlider> {
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
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Stack(
        children: <Widget>[
          CarouselSlider(
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
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 0),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Column(
                        children: [
                          if (i == 1)
                            _buildSlide1()
                          else if (i == 2)
                            _buildSlide2()
                          else if (i == 3)
                            _buildSlide3()
                          else if (i == 4)
                            _buildSlide4()
                        ],
                      ),
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildSlide1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: Customshape(),
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/slider1.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Online Learning \n Plateform',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'A handful of free courses \n to skill up in Tech, \n without paying a dime.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    _controller.nextPage();
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: Customshape(),
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/slider2.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Learning at your \n own pace',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Studies designed to be \n accomplished at the, \n Student's own pace",
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    _controller.nextPage();
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: Customshape(),
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/slider3.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Ready to find \n a Course',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Discover professional courses \n get certified, and become \n world class developer.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    _controller.nextPage();
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget _buildSlide4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: ClipPath(
            clipper: Customshape(),
            child: ClipRRect(
              child: SvgPicture.asset(
                'assets/images/slider4.svg',
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                'Explore it \n Today!',
                textAlign: TextAlign.center,
                style: headText(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Start your Teach journey \n with us, we will lead you \n to your goals.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: appColor,
                child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const LogIn()));
                  },
                  icon: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black87,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
