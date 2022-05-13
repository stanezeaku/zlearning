// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/cart.dart';
import 'package:zlearning/pages/course_detail.dart';
import 'package:zlearning/pages/top_courses.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static const String page_id = "Home";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
      automaticallyImplyLeading: false,
      centerTitle: true,
      iconTheme: const IconThemeData(
          // color: Colors.black
          ),
      leading:
          IconButton(onPressed: () {}, icon: const Icon(Icons.window_rounded)),
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
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Cart()));
            },
            icon: const Icon(Icons.shopping_cart_outlined))
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
              height: 20,
            ),
            Container(
              height: 160,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/home.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'A Real-World',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 22,
                        color: Colors.white,
                        height: 1.2),
                  ),
                  const Text(
                    'Experiance!!!',
                    style: TextStyle(
                        fontFamily: 'semi-bold',
                        fontSize: 22,
                        color: Colors.white,
                        height: 1.2),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: appColor, width: 2))),
                        child: const Text(
                          'Explore',
                          style: TextStyle(fontSize: 22, color: appColor),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_right_alt_outlined,
                        color: appColor,
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: headText(),
                ),
                Row(
                  children: const [
                    Text(
                      'SEE ALL',
                      style: TextStyle(color: Colors.teal),
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: Colors.teal,
                      size: 20,
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryContainer('Design'),
                  categoryContainer('Development'),
                  categoryContainer('Business'),
                  categoryContainer('Design'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  categoryContainer('IT & Software'),
                  categoryContainer('Health & Fitness'),
                  categoryContainer('Business'),
                  categoryContainer('Design'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Courses',
                  style: headText(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => TopCourses()));
                  },
                  child: Row(
                    children: const [
                      Text(
                        'SEE ALL',
                        style: TextStyle(color: Colors.teal),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Colors.teal,
                        size: 20,
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  courses(),
                  courses(),
                  courses(),
                  courses(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget categoryContainer(text) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1),
          borderRadius: BorderRadius.circular(15)),
      child: Text(text),
    );
  }

  Widget courses() {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CourseDetail()));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 200,
              padding: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/homec.jpg'),
                      fit: BoxFit.cover)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: appColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text('BEST SELLER'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
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
              'Generator on there internet tend',
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
            const Text(
              '\$14.50',
              style: TextStyle(
                  color: Colors.teal, fontFamily: 'medium', fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
