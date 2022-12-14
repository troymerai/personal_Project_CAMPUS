import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'feed.dart';

class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentIndex = 0;
  var appbartitle = TextStyle(color: Colors.black, fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.star,
          color: Colors.blue,
        ),
        title: Text(
          "이거어때",
          style: appbartitle,
        ),
        actions: [
          IconButton(
            icon: Icon(CupertinoIcons.plus_circled, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(CupertinoIcons.line_horizontal_3, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex, //현재 보여주는 탭
        onTap: (newIndex) {
          print("selected newIndex : $newIndex");
          // 다른 페이지 이동
          setState(() {
            currentIndex = newIndex; // 색깔 띄우는 거
          });
        },
        selectedItemColor: Colors.black, // 선택된 아이콘 색상
        unselectedItemColor: Colors.grey, // 선택되지 않은 아이콘 색상
        showSelectedLabels: false, // 선택된 항목 label 숨기기
        showUnselectedLabels: false, // 선택되지 않은 항목 label 숨기기
        type: BottomNavigationBarType.fixed, // 선택시 아이콘 움직이지 않기
        backgroundColor: Colors.white.withOpacity(0.8),
        items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search), label: ""),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.collections), label: ""),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person_crop_circle), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ""),
        ],
      ),
    );
  }
}


// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final List<String> images = [
//       "https://cdn2.thecatapi.com/images/bi.jpg",
//       "https://cdn2.thecatapi.com/images/63g.jpg",
//       "https://cdn2.thecatapi.com/images/a3h.jpg",
//       "https://cdn2.thecatapi.com/images/a9m.jpg",
//       "https://cdn2.thecatapi.com/images/aph.jpg",
//       "https://cdn2.thecatapi.com/images/1rd.jpg",
//       "https://cdn2.thecatapi.com/images/805.gif",
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(CupertinoIcons.camera, color: Colors.black),
//           onPressed: () {},
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(CupertinoIcons.paperplane, color: Colors.black),
//             onPressed: () {},
//           )
//         ],
//         title: Image.asset(
//           'assets/logo.png',
//           height: 32,
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//       ),
//       body: ListView.builder(
//         itemCount: images.length, // 이미지 개수만큼 보여주기
//         itemBuilder: (context, index) {
//           final image = images[index]; // index에 해당하는 이미지
//           return Feed(imageUrl: image); // imageUrl 전달
//         },
//       ),
//     );
//   }
// }