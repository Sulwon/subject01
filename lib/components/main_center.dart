import 'package:flutter/material.dart';

class mainCenter extends StatelessWidget {
  const mainCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Color.fromRGBO(232, 236, 247, 1),
        ),
      ),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildCenter("나의 카드", "", "카드발급일정", "1"),
          const SizedBox(height: 5),
          Container( height:1.0, width:500.0, color:Color.fromRGBO(232, 236, 247, 1),),
          const SizedBox(height: 5),
          _buildCenter("나의 상담", "상담내역 ", "0건", "2"),
          const SizedBox(height: 5),
          Container( height:1.0, width:500.0, color:Color.fromRGBO(232, 236, 247, 1),),
          const SizedBox(height: 5),
          _buildCenter("나의 훈련", "훈련수료 ", "1건", "3"),
          const SizedBox(height: 5),
          Container( height:1.0, width:500.0, color:Color.fromRGBO(232, 236, 247, 1),),
          const SizedBox(height: 5),
          _buildCenter("나의 관심(훈련)", "관심훈련 ", "0건", "4")
        ],
      ),
    );
  }

  Widget _buildCenter(String a, String b, String c, String d) {
    return Row(
      children: [
        Padding(
        padding: const EdgeInsets.only(left: 30.0),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$a",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
            Row(
              children: [
                Text(
                  "$b",
                  style: TextStyle(
                    color: Color.fromRGBO(88, 89, 94, 1),
                    fontSize: 20,
                  ),
                ),
                Text(
                  "$c",
                  style: TextStyle(
                      color: Color.fromRGBO(51, 122, 123, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w700
                  ),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Image.asset(
          "assets/$d.png",
          //fit: BoxFit.cover,
        ),
      ],
    );
  }
}
