import 'package:book_report/add_book_report.dart';
import 'package:book_report/book_preview_card.dart';
import 'package:flutter/material.dart';

final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];
void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Report App'),
        centerTitle: true,
        elevation: 4.0,
        leading: IconButton(
          icon: Icon(Icons.cake),
          onPressed: () => {print("Hi")},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          BookPreviewCard(),
          BookPreviewCard(),
          BookPreviewCard(),
          BookPreviewCard(),
          BookPreviewCard(),
          BookPreviewCard(),
        ],
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
