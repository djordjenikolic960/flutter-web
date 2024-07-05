import 'package:flutter/material.dart';

import '../../core/dimens.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(
            "assets/images/home.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Positioned.fill(
          child: Container(
            color: Colors.black38,
          ),
        ),
        const Text(
          "I'm Djordje Nikolic \n A Flutter Mobile Developer",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: Dimens.fontSize48,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
