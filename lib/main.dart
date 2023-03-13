import 'package:flutter/material.dart';
import 'package:myprofile/components/main_center.dart';
import 'package:myprofile/components/main_top.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int current_index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "myApp",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: _buildAppBar(),
        body: Column(
          children: const [
            SizedBox(height: 20),
            mainTop(),
            SizedBox(height: 20),
            mainCenter(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: current_index,
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              label: "홈",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "과정검색",
              icon: Icon(Icons.pageview),
            ),
            BottomNavigationBarItem(
              label: "나의정보",
              icon: Icon(Icons.person),
            ),
            BottomNavigationBarItem(
              label: "도움말",
              icon: Icon(Icons.notifications),
            )
          ],
          showUnselectedLabels: true,
          unselectedItemColor: Color.fromRGBO(88, 89, 94, 1),
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Icon(
          Icons.arrow_back_ios,
          color: Color.fromRGBO(88, 89, 94, 1),
        ),
      ),
      title: const Text(
        "나의 정보",
        style: TextStyle(
          color: Color.fromRGBO(88, 89, 94, 1),
          fontSize: 20,
          fontWeight: FontWeight.w700
        ),
      ),
      centerTitle: true,
      actions: [
        Icon(
          Icons.search,
          color: Color.fromRGBO(88, 89, 94, 1),
          size: 35,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0),
        ),
        Row(
          children: [
            Icon(
              Icons.menu,
              color: Color.fromRGBO(88, 89, 94, 1),
              size: 35,
            ),
            Text(
              "메뉴",
              style: TextStyle(
                color: Color.fromRGBO(88, 89, 94, 1),
                fontSize: 14,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
        ),
      ],
    );
  }
}
