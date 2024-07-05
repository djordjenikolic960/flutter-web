import 'package:flutter/material.dart';

import '../../../core/dimens.dart';

class HeaderItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  const HeaderItem({
    super.key,
    required this.text,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
          Dimens.size16,
          Dimens.size32,
          Dimens.size16,
          Dimens.size8,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}