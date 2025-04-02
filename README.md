# 🚆기차예매 앱 만들기(flutter_train_app)
---
##### Flutter로 하는 첫 프로젝트

## 각 페이지의 위젯트리
---

HomePage의 위젯트리
```
- Scaffold
  - Appbar
    - Title
      - Text('기차예매')
  - Body
    - Column
      - Container
        - Row
         - Text
         - Container(세로선)
         - Text
      - Container
         - Text   

 ```   
<br> StationListPage 위젯트리
 ```
- Scaffold
  - Appbar
    - Title
      - Text
  - Body
    - Column
         - Text
         - Container(세로선)x10
         - Text
         
 ```

 <br> SeatPage 위젯트리

 ```
- Scaffold
   - Appbar
      - Title
        - Text
   - Body
     - Column
       - Row
         - Text
         - Icon
         - Text
       - Row
         - Container
         - Text('선택됨')
         - Container
         - Text('선택됨')
      - Row
        -Text(A)
        -Text(b)
        -Text(C)
        -Text(D)
      - Row
        - Container
        - Container
        - Text
        - Container
        - Container [x20]
      - Row
        Container
        Text(예매 하기)  
 ```
<br/>

# 👨🏻‍💻구현과정
---
```dart
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
```
주석 제거 및 초기 세팅 
```dart
class HomePage extends StatelessWidget {
}
```
HomePage StatelessWdget 생성
```dart
@override
  Widget build(BuildContext context) {
    return Scaffold()
  }
```
Scaffold 생성
```dart
ackgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text('기차예매')),
```
background color grey[200]적용 후 Appbar - Title - Text ('기차예매') 적용
```dart
body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20), //모서리정리
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, //가운데 정렬
        )
)
```
StationSelectBox Container 위젯 모서리 정리 , 페이지 가운데 정렬

+ ps. 아직 다 못적었습니다ㅠㅠ

## 📊프로젝트 진척도
---
+ 전체
- [X] Homepage UI 구현
- [x] Homepage 기능 구현
- [X] StationListPage UI 구현
- [ ] StationListPage 기능 구현
- [ ] SeatPage UI 구현
- [ ] SeatPage 기능 구현
---
+ Homepage
  
페이지의 디자인과 터치 이벤트시 페이지 이동까지 구현
<br>
+ StationListPage
  
페이지 내의 디자인은 완성했으나 터치 이벤트 및 데이터 이동 구현 못함
<br>
+ SeatPage
  
페이지 내 디자인도 타이틀밖에 하지 못했고 기능구현 또한 하나도 못함

## 부족했던 부분
---
1. 기능구현이 필요한 모든부분
2. 다트 문법 미숙지
3. Flutter 위젯 기능 이해
4. Flutter 전체구조에 대한 이해
5. 오류 대처 및 해결능력 부족

## 프로젝트 진행하며 느끼고 배운점
---
<br>1. Flutter UI 위젯의 구조에 대하여 아직 배울점이 많지만 그래도 기본적인 UI정도는 혼자의 힘으로 다룰 수 있게 되었다.
<br>2. 나의 부족한 역량들을 알게되었고 부족한 부분들을 더 앟아보며 채워가야겠다.
<br>3. 자주 쓰는 위젯 기능들은 어느정도 암기 해두는게 좋을 것 같다.
<br>4. 디자인을 하는 것은 많이 어렵지 않지만 페이지 이동이나 데이터 이동, 터치 이벤트가 많이 낯설고 어렵다.

<br>

#### 💁성취도 한 눈에 보기 !
---

.|HomePage|StationListPage|SeatPage
---|---|---|---
디자인|100%|100%|5%
기능|75%|0%|0%
전체만족도|80%|40%|0%
