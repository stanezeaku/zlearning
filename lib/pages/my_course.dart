// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({Key? key}) : super(key: key);

  static const String page_id = "My Course";

  @override
  _MyCourseState createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: _buildAppbar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppbar() {
    return AppBar(
      backgroundColor: bgcolor,
      elevation: 0,
      centerTitle: true,
      iconTheme: const IconThemeData(),
      automaticallyImplyLeading: false,
      title: SizedBox(
        width: 250,
        child: Text(
          'Hi,Stanley Ezeaku',
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          maxLines: 1,
          softWrap: false,
          style: headText(),
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.shopping_cart_outlined))
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            searchbar(),
            const SizedBox(
              height: 30,
            ),
            cource(0.15, '15% Complete'),
            cource(0.55, '55% Complete'),
            cource(0.15, '15% Complete'),
          ],
        ),
      ),
    );
  }

  Widget cource(persent, text) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: bgcolor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Container(
              height: 130,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/course.jpg'),
                      fit: BoxFit.cover)),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text('4.5'),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          size: 20,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_outline,
                          size: 20,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                    Text(
                      'Coding With Python Interface',
                      style: headText(),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.person_outline,
                          color: Colors.grey,
                          size: 20,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Stanley Ezeaku')
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    LinearPercentIndicator(
                      width: 150.0,
                      barRadius: const Radius.circular(10),
                      lineHeight: 10.0,
                      percent: persent,
                      backgroundColor: appColor.withOpacity(0.3),
                      progressColor: appColor,
                      padding: const EdgeInsets.all(0),
                    ),
                    Text(text)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
