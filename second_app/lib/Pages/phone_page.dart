import 'package:flutter/material.dart';
import 'package:second_app/Pages/Cards/card.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text(
          'Product Listing',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 2,
      ),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCard(
              title: 'iPhone',
              price: 1000,
              message: 'iPhone is the most stylist phone ever',
              colorType: Color.fromARGB(255, 255, 64, 236),
            ),
            MyCard(
              title: 'Pixel 1',
              price: 800,
              message: 'Pixel is the most featureful phone',
              colorType: Color.fromARGB(255, 33, 82, 243),
            ),
            MyCard(
                title: 'laptop',
                price: 2000,
                message: 'Laptop is most productive development tool',
                colorType: Colors.green),
            MyCard(
                title: 'tablet',
                price: 1500,
                message: 'Tablet is the most useful device ever for meeting',
                colorType: Color.fromARGB(255, 242, 255, 0)),
            MyCard(
                title: 'pen drive',
                price: 100,
                message: 'Pen drive is the best drive ever',
                colorType: Color.fromARGB(255, 255, 88, 82)),
          ],
        ),
      ),
    );
  }
}
