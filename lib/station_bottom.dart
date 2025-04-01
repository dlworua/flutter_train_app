import 'package:flutter/material.dart';
import 'package:flutter_train_app/seat_page.dart';

class StationBottom extends StatefulWidget {
  @override
  State<StationBottom> createState() => _StationBottomState();
}

class _StationBottomState extends State<StationBottom> {
  String selectedDeparture = '좌석 선택'; // 좌석 선택 초기값

  // 좌석 선택 버튼 클릭 시 이동할 수 있도록 하는 함수
  void navigateToSeatPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SeatPage()),
    );
  }

  @override //매개변수
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return SeatPage();
            },
          ),
        );
      },
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '좌석 선택',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
