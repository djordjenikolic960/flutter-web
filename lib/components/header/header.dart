import 'package:flutter/material.dart';

import '../../core/dimens.dart';
import '../../main.dart';
import 'widgets/header_item.dart';
import 'widgets/logo_item.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: Dimens.size12,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const LogoItem(),
            Row(children: [
              HeaderItem(
                text: "Home",
                onTap: () {
                  Scrollable.ensureVisible(homeKey.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOut);
                },
                isSelected: true,
              ),
              HeaderItem(
                text: "About",
                onTap: () {
                  Scrollable.ensureVisible(aboutKey.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOut);
                },
                isSelected: false,
              ),
              HeaderItem(
                text: "Portfolio",
                onTap: () {
                  Scrollable.ensureVisible(portfolioKey.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOut);
                },
                isSelected: false,
              ),
              HeaderItem(
                text: "Contact",
                onTap: () {
                  Scrollable.ensureVisible(contactKey.currentContext!,
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.easeOut);
                },
                isSelected: false,
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
