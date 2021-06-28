import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '부산포항칼라강판',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '부산포항칼라강판 지붕개량'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(250, 250, 250, 4),
        bottomOpacity: 0,
        toolbarOpacity: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        elevation: 0,
        title: Center(
          child: Text(
            widget.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: 26,
              fontFamily: 'NotoSerifKR',
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image(
                image: AssetImage('images/img_main.jpg'),
                fit: BoxFit.fill,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainButton(() {}, Text('업체소개')),
                MainButton(() {}, Text('시공안내')),
                MainButton(() {}, Text('공지사항')),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                color: Colors.amberAccent,
                height: 45,
                child: Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.sms,
                            size: 14,
                          ),
                          Text(
                            ' 문자메시지 상담하기',
                            style: TextStyle(
                                fontSize: 18, fontFamily: 'NotoSerifKR'),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                    Container(
                      width: 16,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone,
                            size: 14,
                          ),
                          Text(
                            ' 전화 상담하기',
                            style: TextStyle(
                                fontSize: 18, fontFamily: 'NotoSerifKR'),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              color: Colors.grey,
              child: Row(
                children: [
                  SizedBox(width: 150),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BottomText(
                          '부산포항칼라강판  |  부산광역시 남구 대연 4동 1170번지  |  대표 이종원'),
                      BottomText(
                          'A/S, 견적문의 051-626-0043  |  모바일 010-5524-0043'),
                      BottomText(
                          'Copyright (c) 부산포항칼라강판 지붕개량 All Rights Reserved.'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(),
    );
  }
}

class BottomText extends StatelessWidget {
  final String data;

  BottomText(this.data);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(
        data,
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'NanumGothic',
          fontSize: 15.5,
        ),
      ),
    );
  }
}
