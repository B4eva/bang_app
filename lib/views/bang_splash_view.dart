import 'package:bank_app/utils/const_colors.dart';
import 'package:bank_app/views/bang_login_view.dart';
import 'package:flutter/material.dart';

class BankAppSplashView extends StatelessWidget {
  const BankAppSplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(
          seconds: 5,
        ), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const BangLoginView()));
    });

    return Scaffold(
      backgroundColor: ConstColors.mainThemeColor,
      body: Stack(
        children: const <Widget>[
          Center(
            child: Icon(
              Icons.savings_outlined,
              color: Colors.white,
              size: 60,
            ),
          ),
          Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator(
                strokeWidth: 8,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
