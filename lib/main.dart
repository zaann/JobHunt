import 'package:flutter/material.dart';
import 'package:cobacobacoba/dashboard.dart';
import 'package:cobacobacoba/loginpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coba-coba App',
      home: LoginPage(),
      routes: {
        '/dashboard': (context) => DashboardPage(),
      },
    );
  }
}
