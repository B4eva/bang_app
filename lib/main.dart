import 'package:bank_app/views/bang_splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BankApp());
}

class BankApp extends StatelessWidget {
  const BankApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData(
      //     textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      debugShowCheckedModeBanner: false,
      home: BankAppSplashView(),
    );
  }
}
