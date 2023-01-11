import "package:flutter/material.dart";

final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

class BookPreviewCard extends StatelessWidget {
  final child;

  BookPreviewCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        color: Colors.deepPurple,
        child: Text(child),
      ),
    );
  }
}
