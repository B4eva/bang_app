import 'package:bank_app/utils/const_colors.dart';
import 'package:bank_app/utils/ui_helper.dart';
import 'package:flutter/material.dart';

import 'widgets/auth_textfield.dart';
import 'widgets/bang_logo.dart';
import 'widgets/bang_mainbutton.dart';

class BangLoginView extends StatefulWidget {
  const BangLoginView({Key? key}) : super(key: key);

  @override
  _BangLoginViewState createState() => _BangLoginViewState();
}

class _BangLoginViewState extends State<BangLoginView> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ConstColors.white,
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const BangLogo(),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Welcome to',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              const Text(
                'Bang\nSavings Bank',
                style:
                    TextStyle(color: ConstColors.mainThemeColor, fontSize: 30),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    'Sign Into your Bang Account',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AuthTextField(
                    leading: Icons.email,
                    hintPlaceHolder: 'Emial',
                    controller: usernameController,
                    onChanged: (text) {
                      setState(() {});
                    },
                  ),
                  verticalSpaceSmall,
                  AuthTextField(
                    leading: Icons.password,
                    hintPlaceHolder: 'password',
                    controller: passwordController,
                    password: true,
                    obscureText: '*',
                    onChanged: (text) {
                      setState(() {});
                    },
                  )
                ],
              ),
              const Spacer(),
              BangMainButton(
                lable: 'Sign In',
                enabled: true,
                onTap: () {},
              ),
              verticalSpaceSmall,
              BangMainButton(
                lable: 'Register',
                icon: Icons.account_circle,
                backgroundColor: ConstColors.mainThemeColor.withOpacity(0.05),
                iconColor: ConstColors.mainThemeColor,
                lableColor: ConstColors.mainThemeColor,
                onTap: () {},
              )
            ],
          ),
        ));
  }
}
