import 'package:flutter/material.dart';
import 'package:flutter_train_app/station_list_page.dart';

//StateSelect 클래스 위젯 생성
class StationSelectBox extends StatefulWidget {
  @override
  State<StationSelectBox> createState() => _StationSelectBoxState();
}

class _StationSelectBoxState extends State<StationSelectBox> {
  String selectedDeparture = '선택'; // 출발역 초기값
  String selectedDestination = '선택'; // 도착역 초기값

  // 선택 버튼 클릭 시 이동할 수 있도록 하는 함수

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
          //세로선 생성 (너비 '2', 높이 '50', 색상 'Colors.grey[400]'설정)
          Container(width: 2, height: 50, color: Colors.grey[400]),
          stationBox('도착역', '선택'),
        ],
      ),
    );
  }

  Expanded stationBox(String text, String station) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return StationListPage(text);
              },
            ),
          );
          //print(text);
          //navigateToStationListPage();
        },
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
      ),
    );
  }
}
