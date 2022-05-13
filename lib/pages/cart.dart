// Copyright Stanely Ezeaku © 2022.

import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/payment.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  static const String page_id = "Cart";

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: _buildAppbar(),
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Payment()));
          },
          child: const Text('Proceed to Checkout'),
          style: simpleButton(),
        ),
      ),
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
            cartItem(),
            cartItem(),
            Row(
              children: [
                const Expanded(
                  flex: 8,
                  child: TextField(
                    style: TextStyle(),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      hintText: 'Coupen Code',
                      hintStyle: TextStyle(),
                      filled: true,
                      fillColor: bgcolor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Apply Now'),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Colors.teal,
                        onPrimary: Colors.white,
                        minimumSize: const Size.fromHeight(40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Subtotal'), Text('\$40.95')],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [Text('Shipping'), Text('Free')],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Total'),
                Text(
                  '\$40.95',
                  style: TextStyle(
                      color: Colors.teal, fontFamily: 'medium', fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cartItem() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
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
                children: const [
                  Text('Get Started With Python'),
                  Text(
                    '\$40.50',
                    style: TextStyle(
                        color: Colors.teal, fontSize: 18, fontFamily: 'medium'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
            decoration: BoxDecoration(
                border: Border.all(color: appColor),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: const [
                Icon(
                  Icons.remove,
                  size: 20,
                ),
                Text('1'),
                Icon(
                  Icons.add,
                  size: 20,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
