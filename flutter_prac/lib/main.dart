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


void main() {
  runApp(DesignApp());
}

// 5.5 디자인 관련 위젯
// 5.5.1 Container 위젯
class DesignApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(
                width: 16.0,
                color: Colors.black,
              ),
                borderRadius: BorderRadius.circular(
                16.0,
            ),
            ),
            height: 200.0,
            width: 100.0,
          )
        )
      )
    );
  }
}


