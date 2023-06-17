import 'package:cobacobacoba/detailapply.dart';
import 'package:flutter/material.dart';

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
        title: Text(judul),
      ),
      body: Container(
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
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailApply()),
                );
              },
              child: Text('Lihat Detail Apply'),
            ),
          ],
        ),
      ),
    );
  }
}
