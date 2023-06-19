import 'package:cobacobacoba/detailapply.dart';
import 'package:flutter/material.dart';

class PelatihanDetailPage extends StatelessWidget {
  final String judul;
  final String institusi;
  final String deskripsi;

  PelatihanDetailPage({
    required this.judul,
    required this.institusi,
    required this.deskripsi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(judul),
        backgroundColor: Colors.indigo.shade900, // ubah warna AppBar
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              institusi,
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
