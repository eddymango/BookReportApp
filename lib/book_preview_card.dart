import "package:flutter/material.dart";
import 'package:firebase_core/firebase_core.dart';

final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

class BookPreviewCard extends StatelessWidget {
  final String child;

  const BookPreviewCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(1.0),
        child: Row(children: [
          Flexible(
            flex: 1,
            child: Image.asset(
              'assets/images/book1.jpg',
              height: 50,
              width: 50,
            ),
          ),
          Flexible(
            flex: 3,
            child: Column(
              children: [
                Text("이름"),
                Text("저자"),
              ],
            ),
          )
        ]));
  }
}
