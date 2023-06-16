import 'package:flutter/material.dart';
import 'package:cobacobacoba/dashboard.dart';
import 'package:cobacobacoba/loginpage.dart';
import 'package:cobacobacoba/akun.dart';
import 'package:cobacobacoba/profil.dart';
import 'package:cobacobacoba/lowonganapply.dart';
import 'package:cobacobacoba/pelatihanapply.dart';
import 'package:cobacobacoba/manajemenkarir.dart';
import 'package:cobacobacoba/riwayatpelatihan.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coba-coba App',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/dashboard': (context) => DashboardPage(),
        '/akun': (context) => AkunPage(),
        '/profil': (context) => ProfilPage(),
        '/lowonganapply': (context) => LowonganApplyPage(),
        '/pelatihanapply': (context) => PelatihanApplyPage(),
        '/manajemenkarir': (context) => ManajemenKarirPage(),
        '/riwayatpelatihan': (context) => RiwayatPelatihanPage(),
      },
    );
  }
}
