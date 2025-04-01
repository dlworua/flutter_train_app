import 'package:flutter/material.dart';
import 'package:flutter_train_app/station_Select_Box.dart';
import 'package:flutter_train_app/station_bottom.dart';
import 'package:flutter_train_app/station_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage());
  }
}

//HomePage 클래스 위젯 생성
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //background color grey[200]적용
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('기차예매')),
      //출발역, 도착역 감싸고 있는 박스위젯 가운데 정렬 및 모서리 정리
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), //모서리정리
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //가운데 정렬
          children: [StationSelectBox(), SizedBox(height: 20), StationBottom()],
        ),
      ),
    );
  }
}
