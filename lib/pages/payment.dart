// Copyright Stanely Ezeaku © 2022.
import 'package:zlearning/helper/style.dart';
import 'package:zlearning/pages/order_success.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  static const String page_id = "Payment";

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
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
                MaterialPageRoute(builder: (context) => OrderSuccess()));
          },
          child: const Text('Pay Now'),
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
            Text(
              'Select Payment',
              style: headText(),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/pay1.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay2.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay3.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/pay4.png',
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add_circle_outline,
                  color: Colors.teal,
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: const BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.teal))),
                  child: const Text(
                    'ADD NEW CARD',
                    style: TextStyle(color: Colors.teal),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Card Number',
              style: headText(),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: simpleInputText('9898 9898 9888 7878'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Name',
              style: headText(),
            ),
            const SizedBox(
              height: 5,
            ),
            TextField(
              decoration: simpleInputText('Stanley Ezeaku'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Expiry Date',
                        style: headText(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: simpleInputText('08/2025'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: headText(),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextField(
                        decoration: simpleInputText('111'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
