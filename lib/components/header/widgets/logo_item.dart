import 'package:flutter/material.dart';

import '../../../core/dimens.dart';

class LogoItem extends StatelessWidget {
  const LogoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: Dimens.size1,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.size12,
          vertical: Dimens.size8,
        ),
        child: Text(
          "Dj",
          style: TextStyle(
            fontSize: Dimens.fontSize22,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
