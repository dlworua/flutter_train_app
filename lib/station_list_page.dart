import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StationListPage extends StatelessWidget {
  StationListPage(this.title); //생성자

  String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                station('수서'),
                station('동탄'),
                station('평택지제'),
                station('천안아산'),
                station('오송'),
                station('대전'),
                station('김천구미'),
                station('동대구'),
                station('경주'),
                station('울산'),
                station('부산'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //위젯으로 묶어 station 함수에 컨테이너와 텍스트 저장
  Widget station(String text) {
    return Container(
      //컨테이너 늘리기
      width: double.infinity,
      height: 50,
      //컨테이너 전체 디자인 설정
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey[300]!)),
      ),
      child: Expanded(
        child: Column(
          //가로방향으로 시작점에 텍스트고정
          crossAxisAlignment: CrossAxisAlignment.start,
          //세로방향으로 밑줄 컨테이너 가운데 정렬
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //텍스트 전체디자인 설정
            Text(
              text,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
