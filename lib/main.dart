import 'package:flutter/material.dart';
import 'package:otp_app/register.dart';
import 'otp.dart';
import 'welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Otp Demo',
      theme: ThemeData(),
      home: const Welcome(),
      routes: {
        'register': (context) => const Register(),
        'otp': (context) => const Otp(),
      },
    );
  }
}
