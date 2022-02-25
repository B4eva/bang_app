import 'package:bank_app/utils/const_colors.dart';
import 'package:flutter/material.dart';

class BangMainButton extends StatelessWidget {
  final String? lable;
  final Function? onTap;
  final bool? enabled;
  final IconData? icon;
  final Color? backgroundColor;
  final Color? iconColor;
  final Color? lableColor;
  const BangMainButton({
    Key? key,
    this.lable,
    this.onTap,
    this.enabled = true,
    this.icon,
    this.backgroundColor = ConstColors.mainThemeColor,
    this.iconColor = ConstColors.white,
    this.lableColor = ConstColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Material(
            color:
                enabled! ? backgroundColor : backgroundColor!.withOpacity(0.5),
            child: InkWell(
              onTap: enabled!
                  ? () {
                      onTap!();
                    }
                  : null,
              highlightColor: Colors.white.withOpacity(0.2),
              splashColor: Colors.white.withOpacity(0.1),
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Visibility(
                        visible: icon != null,
                        child: Container(
                            margin: const EdgeInsets.only(right: 20),
                            child: Icon(
                              icon,
                              color: iconColor,
                              size: 20,
                            ))),
                    Text(
                      lable!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: lableColor, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
