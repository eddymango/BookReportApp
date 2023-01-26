import 'package:flutter/material.dart';

import 'add_book_report.dart';
import 'book_preview_card.dart';

class FirstPage extends StatelessWidget {
  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Report App'),
        centerTitle: true,
        elevation: 4.0,
        leading: IconButton(
          icon: const Icon(Icons.search),
          onPressed: () => {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: _post.length,
        itemBuilder: ((context, index) {
          return BookPreviewCard(child: _post[index]);
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => AddBookReport()),
          );
        },
        backgroundColor: const Color(0xff6750a4),
        child: const Icon(Icons.add),
      ),
    );
  }
}
