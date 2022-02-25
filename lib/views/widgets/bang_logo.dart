import 'package:bank_app/utils/const_colors.dart';
import 'package:flutter/material.dart';

class BangLogo extends StatelessWidget {
  const BangLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(width: 7, color: ConstColors.mainThemeColor),
            borderRadius: BorderRadius.circular(100)),
        child: const Icon(
          Icons.savings_outlined,
          color: ConstColors.mainThemeColor,
          size: 45,
        ));
  }
}
