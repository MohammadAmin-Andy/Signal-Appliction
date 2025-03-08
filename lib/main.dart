import 'package:flutter/material.dart';
import 'package:signalvip_appliction/login_page.dart';

void main(List<String> args) {
  runApp(Applications());
}

class Applications extends StatelessWidget {
  const Applications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Vazir'),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
