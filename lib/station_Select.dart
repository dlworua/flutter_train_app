import 'package:flutter/material.dart';

//app bar  stationTitle 생성
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
          Text(
            '도착역',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          //"선택" 텍스트 생성(폰트사이즈 '40' 설정)
          Text('선택', style: TextStyle(fontSize: 40)),
          //세로선 생성 (너비 '2', 높이 '50', 색상 'Colors.grey[400]'설정)
          Container(width: 2, height: 50, color: Colors.grey[400]),
          Text(
            '출발역',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          //"선택" 텍스트 생성(폰트사이즈 '40' 설정)
          Text('선택', style: TextStyle(fontSize: 40)),
        ],
      ),
    );
  }
}
