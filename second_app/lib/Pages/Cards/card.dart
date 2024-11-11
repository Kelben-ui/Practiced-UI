import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.title,
    required this.price,
    required this.message,
    required this.colorType,
  });
  final String title;
  final String message;
  final double price;
  final Color colorType;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(children: [
        Container(
          height: 100,
          width: 150,
          alignment: Alignment.center,
          color: colorType,
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 35),
          ),
        ),
        Expanded(
          child: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(
                  message,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  'Price: $price ',
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ])),
        )
      ]),
    );
  }
}
