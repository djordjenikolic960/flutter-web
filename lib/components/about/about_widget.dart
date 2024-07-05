import 'package:flutter/material.dart';

import '../../core/dimens.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(
          MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/about.png",
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.sizeOf(context).width * 0.05,
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Bio",
                      style: TextStyle(
                        fontSize: Dimens.fontSize48,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: Dimens.size8,
                    ),
                    Text(
                      "Hello! I'm Djordje Nikolic, a passionate Mobile Engineer specializing in "
                      "Flutter and Dart with a solid five-year track record in the mobile development industry. "
                      "My journey began with a keen interest in Android development, where I spent a valuable year honing my skills. "
                      "Since then, I've dedicated myself to mastering Flutter, leading to a rewarding four years creating elegant, "
                      "user-centric mobile applications that enhance daily experiences. "
                      "I thrive on challenges and pride myself on my meticulous attention to detail, robust problem-solving skills, "
                      "and the ability to communicate complex technical ideas with clarity. "
                      "Whether it's designing intuitive interfaces or integrating robust backend systems, "
                      "I bring a blend of technical acumen and creative thinking to deliver top-notch mobile solutions. "
                      "If you're seeking a developer who combines deep industry knowledge with a proactive approach and a commitment to excellence, let's connect!",
                      style: TextStyle(
                        fontSize: Dimens.fontSize22,
                        color: Colors.black87,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
