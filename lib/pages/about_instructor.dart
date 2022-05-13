// Copyright Stanely Ezeaku © 2022.

import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/cart.dart';
import 'package:flutter/material.dart';

class AboutInstructer extends StatefulWidget {
  const AboutInstructer({Key? key}) : super(key: key);

  static const String page_id = "About Instructer";

  @override
  _AboutInstructerState createState() => _AboutInstructerState();
}

class _AboutInstructerState extends State<AboutInstructer> {
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            searchbar(),
            const SizedBox(
              height: 30,
            ),
            Text(
              'About Instructer:',
              style: headText(),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/course.jpg'),
                          fit: BoxFit.cover)),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Stanley Ezeaku',
                              style: TextStyle(fontSize: 18),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                  color: appColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: const Text(
                                'BEST SELLER',
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Top Rated Instructor',
                          style: TextStyle(color: Colors.teal),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text of the printing and Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been text of the printing and...'),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Icon(
                  Icons.insert_drive_file_outlined,
                  color: appColor,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('250 Courses Uploaded')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.celebration_outlined,
                  color: appColor,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Best Seller Award')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(
                  Icons.thumb_up_outlined,
                  color: appColor,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('5+ Million Students Followed')
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: 'OFFER PRICE : ',
                      style:
                          TextStyle(fontFamily: 'regular', color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' \$30.50',
                          style: TextStyle(
                            fontFamily: 'semi-bold',
                            fontSize: 32,
                            color: appColor,
                          ),
                        ),
                        TextSpan(
                          text: '  \$40.50',
                          style: TextStyle(
                              fontFamily: 'regular',
                              color: Colors.white,
                              decoration: TextDecoration.lineThrough),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Cart()));
                    },
                    child: const Text(
                      'Buy Now',
                    ),
                    style: simpleButton(),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add to Cart'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      minimumSize: const Size.fromHeight(50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                          side: const BorderSide(color: appColor)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
