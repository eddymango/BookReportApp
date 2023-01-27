import 'package:book_report/book_provider.dart';
import 'package:book_report/book_report.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/*해야할 일 :
  1.preview layout 개요 그리기 및 코드 작성 
  2.test data 생성 및 입력 
  
*/
class AddBookReport extends StatefulWidget {
  const AddBookReport({Key? key}) : super(key: key);

  @override
  State<AddBookReport> createState() => _AddBookReportState();
}

class _AddBookReportState extends State<AddBookReport> {
  String name = "";
  String author = "";
  String report = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              "책 등록 하기",
            )),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/testImage.jpg',
                      height: 300,
                      width: 300,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (String name) {
                            this.name = name;
                          },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 17),
                            hintText: '책 제목:',
                          ),
                        ),
                        TextField(
                          onChanged: (String author) {
                            this.author = author;
                          },
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 17),
                            hintText: '저자 이름:',
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: TextField(
                onChanged: (String report) {
                  this.report = report;
                },

                keyboardType: TextInputType.multiline,
                minLines: 1, //Normal textInputField will be displayed
                maxLines: 15, // when user presses enter it will adapt to it

                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: '내용 입력',
                ),
              ),
            ),
            TextButton(
              onPressed: saveDB,
              child: Text("등록하기"),
            )
          ],
        ),
      ),
    );
  }

  Future<void> saveDB() async {
    DBHelper sd = DBHelper();

    var fido = BookReport(
      id: 3,
      name: this.name,
      author: this.author,
      report: this.report,
    );

    await sd.insertReport(fido);

    print(await sd.bookreport());
  }
}
