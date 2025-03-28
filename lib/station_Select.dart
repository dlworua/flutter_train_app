import 'package:flutter/material.dart';

//StateSelect 클래스 위젯 생성
class StationSelect extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        //글자 및 세로선 가운데 정렬
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //"출발역" 텍스트 생성(사이즈 '15', 색상 'grey', 글꼴 굵게 설정)
          stationBox('출발역', '선택'),
          //"선택" 텍스트 생성(폰트사이즈 '40' 설정)

          //세로선 생성 (너비 '2', 높이 '50', 색상 'Colors.grey[400]'설정)
          Container(width: 2, height: 50, color: Colors.grey[400]),
          stationBox('도착역', '선택'),
        ],
      ),
    );
  }

  Expanded stationBox(String text, String station) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(station, style: TextStyle(fontSize: 40)),
        ],
      ),
    );
  }
}
