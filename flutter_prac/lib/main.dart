// material.dart 파일을 불러와야 플러터에서 기본 제공해주는 위젯을 사용이 가능
import 'package:flutter/material.dart';

// CHILD
// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text(
//           'Hello Code Factory',
//           ),
//         ),
//       ),
//     ),
//   );
// }

// CHILDREN
// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: SizedBox(
//             width: double.infinity,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [ // 리스트로 입력받고 원하는만큼 입력가능
//                 Text('Code'),
//                 Text('Factoryyy'),
//               ],
//             ),
//           ),
//         ),
//     ),
//   );
// }


// WIDGET 예제 연습

// void main() {
//   runApp(MyApp());
// }

// 5.3 TEXT 위젯 예제 코드
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text( // child
//               'HELLO MY NAME IS Q',
//             // 스타일적용
//             style: TextStyle(
//               fontSize: 16.0,
//               fontWeight: FontWeight.w700,
//               color: Colors.blue,
//             )
//           )
//         ),
//       ),
//     );
//   }
// }


// // 5.4.1 BUTTON 위젯 예제 코드
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//             child: ElevatedButton( // TextButton, OutlinedButton, ElevatedButton
//               onPressed: () {},
//               style: OutlinedButton.styleFrom(
//                 backgroundColor: Colors.red,
//                 foregroundColor: Colors.white,
//               ),
//               child: Text('ElevatedButton'
//                 )
//             )
//         ),
//       ),
//     );
//   }
// }

// // 5.4.2 ICONBUTTON 위젯 예제 코드
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//             child: IconButton( // 플러터 기본 제공 아이콘, fonts.google.com/icons
//                 onPressed: () {},
//                 icon: Icon(
//                   Icons.heart_broken
//                 )
//             )
//         ),
//       ),
//     );
//   }
// }

// // 5.4.3 GestureDetector 위젯 예제 코드
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//             child: GestureDetector(
//               onTap: () {
//                 print('ON TAP');
//               },
//
//               onDoubleTap: () {
//                 print('ON DOUBLE TAP');
//               },
//
//               onLongPress: () {
//                 print('ON LONG PRESS');
//               },
//
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.red,
//                 ),
//                 width: 100.0,
//                 height: 100.0,
//               )
//             )
//         ),
//       ),
//     );
//   }
// }

// 5.4.4 FloatingActionButton 위젯
// void main() {
//   runApp(FloatingActionButtonExample());
// }
//
// class FloatingActionButtonExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: Text('클릭'),
//         ),
//         body: Container(),
//       )
//     );
//   }
// }


// void main() {
//   runApp(DesignApp());
// }

// 5.5 디자인 관련 위젯
// 5.5.1 Container 위젯
// class DesignApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             decoration: BoxDecoration(
//               color: Colors.red,
//               border: Border.all(
//                 width: 16.0,
//                 color: Colors.black,
//               ),
//                 borderRadius: BorderRadius.circular(
//                 16.0,
//             ),
//             ),
//             height: 200.0,
//             width: 100.0,
//           )
//         )
//       )
//     );
//   }
// }

// // 5.5.2 SizedBox Widget
// class DesignApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: SizedBox(
//             height: 200.0,
//             width: 200.0,
//
//             // SizedBox는 색상이 없음
//             child: Container(
//               color: Colors.purple,
//             )
//           )
//         )
//       )
//     );
//   }
// }


// 5.5.3 Padding Widget / Margin
// class DesignApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             color: Colors.pink,
//
//             child: Container(
//               color: Colors.purpleAccent,
//               margin: EdgeInsets.all(16.0),
//               child: Padding(
//                 padding:EdgeInsets.all(16.0),
//                   child: Container(
//                     color: Colors.black,
//                     width: 50,
//                     height: 50,
//                   )
//               ),
//
//             )
//           )
//         )
//       )
//     );
//   }
// }

// 5.5.4 SafeArea
// 플러터는 가용되는 화면을 모두 사용하기 때문에, 노치가 있는 핸드폰에서 노치에 위젯들이 가릴 수 있습니다
// SafeArea위젯을 사용하면, 따로 기기별로 예외 처리를 하지 않고도 안전한 화면에서만 위젯을 그릴 수 있습니다
// class DesignApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: SafeArea(
//             top: true,
//             bottom: true,
//             left: true,
//             right: true,
//             child: Container(
//               color: Colors.red,
//               height: 300.0,
//               width: 300.0,
//             )
//           )
//         )
//       )
//     );
//   }
// }



// 5.6 배치 관련 위젯
// 5.6.1 Row 위젯
// void main() {
//   runApp(RowWidgetExample());
// }

// class RowWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: Scaffold(
//         body: SizedBox(
//           height: double.infinity,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.center,
//
//               children: [
//                 Container(
//                   height: 50.0,
//                   width: 50.0,
//                   color: Colors.red,
//                 ),
//
//                 const SizedBox(width: 12.0),
//                 Container(
//                   height: 50.0,
//                   width: 50.0,
//                   color: Colors.green,
//                 ),
//                 const SizedBox(width: 12.0),
//                 Container(
//                   height: 50.0,
//                   width: 50.0,
//                   color: Colors.blue,
//                 )
//               ],
//           )
//         )
//       )
//     );
//   }
// }

// 5.6.2 Column 위젯
void main() {
  runApp(ColumnWidgetExample());
}

// class ColumnWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SizedBox(
//
//           // 너비를 최대한으로 설정
//           // 반대축에서 이동할 공간을 제공해주기 위해
//           width: double.infinity,
//           child: Column(
//
//             // 주축 정렬 지정
//             mainAxisAlignment: MainAxisAlignment.start,
//             // 반대축 정렬
//             crossAxisAlignment: CrossAxisAlignment.center,
//
//             children: [
//               Container(
//                 height: 50.0,
//                 width: 50.0,
//                 color: Colors.red,
//               ),
//
//               // SizedBox는 일반적으로 공백을 생성할 때 사용
//               const SizedBox(width: 12.0),
//               Container(
//                 height: 50.0,
//                 width: 50.0,
//                 color: Colors.green,
//               ),
//
//               const SizedBox(width: 12.0),
//               Container(
//                 height: 50.0,
//                 width: 50.0,
//                 color: Colors.blue,
//               )
//             ],
//           )
//         )
//       )
//     );
//   }
// }

// 5.6.3 Flexible 위젯
// class ColumnWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SizedBox(
//
//           width: double.infinity,
//           child: Column(
//             children: [
//               // flex는 남은 공간을 차지할 비율
//               // flex값을 제공하지 않으면 기본값은 1
//               Flexible(
//                 flex: 1,
//
//                 child: Container(
//                   color: Colors.blue,
//                 ),
//               ),
//
//               Flexible(
//                 flex: 1,
//
//                 child: Container(
//                     color: Colors.red
//                 ),
//               ),
//             ],
//           )
//         )
//       )
//     );
//   }
// }

// 5.6.4 Expanded 위젯
// class ColumnWidgetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: SizedBox(
//           width: double.infinity,
//           child: Column(
//             children: [
//               Expanded(child: Container(color: Colors.blue)),
//               Expanded(child: Container(color: Colors.red)),
//             ],
//           )
//         )
//       )
//     );
//   }
// }

// 5.6.5 Stack 위젯
class ColumnWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
              children: [
                Container(
                  height: 300.0,
                  width: 300.0,
                  color: Colors.red,
                ),

                Container(
                  height: 250.0,
                  width: 250.0,
                  color: Colors.yellow,
                ),

                Container(
                  height: 200.0,
                  width: 200.0,
                  color: Colors.blue,
                )
              ],
            )
          )
        )
      );
  }
}