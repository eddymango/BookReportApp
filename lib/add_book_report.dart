import 'package:flutter/material.dart';

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
                          decoration: InputDecoration(
                            hintStyle: TextStyle(fontSize: 17),
                            hintText: '책 제목:',
                          ),
                        ),
                        TextField(
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
              onPressed: () {},
              child: Text("등록하기"),
            )
          ],
        ),
      ),
    );
  }
}
