import 'package:flutter/material.dart';
import 'package:flutter_train_app/station_select.dart';

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
      body: Column(children: [StationSelect()]),
    );
  }
}

/*
-Scaffold
 -AppBar
  -title
   -Text
 -body
  -colum
  */
