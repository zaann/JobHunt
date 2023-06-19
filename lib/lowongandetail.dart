import 'package:flutter/material.dart';
import 'package:cobacobacoba/detailapply.dart';

class LowonganDetailPage extends StatelessWidget {
  final String judul;
  final String perusahaan;
  final String deskripsi;

  LowonganDetailPage({
    required this.judul,
    required this.perusahaan,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: judul, // tambahkan tag untuk hero animation
          child: Text(
            judul,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.indigo.shade900, // ubah warna AppBar
      ),
      body: Container(
        color: Colors.white, // ubah warna latar belakang
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              perusahaan,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              deskripsi,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailApply()),
                );
              },
              child: Text(
                'Lihat Detail Apply',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
