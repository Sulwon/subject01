import 'package:flutter/material.dart';

class mainTop extends StatelessWidget {
  const mainTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
        ),
        const SizedBox(width: 20),
        _buildHeaderAvatar(),
        const SizedBox(width: 20),
        _buildHeaderProfile(),
      ],
    );
  }

  Widget _buildHeaderAvatar() {
    return const SizedBox(
      width: 120,
      height: 120,
      child: CircleAvatar(
        backgroundImage: AssetImage("assets/profile.png"),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _buildHeaderProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "장태민 님",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          "국민내일배움카드",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
