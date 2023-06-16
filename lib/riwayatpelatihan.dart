import 'package:flutter/material.dart';

class Pelatihan {
  final String namaPelatihan;
  final DateTime tanggalPelatihan;
  final String lokasiPelatihan;
  final Duration durasiPelatihan;

  Pelatihan({
    required this.namaPelatihan,
    required this.tanggalPelatihan,
    required this.lokasiPelatihan,
    required this.durasiPelatihan,
  });
}

class RiwayatPelatihanPage extends StatelessWidget {
  final List<Pelatihan> pelatihanList = [
    Pelatihan(
      namaPelatihan: 'Pelatihan Pemrograman Android',
      tanggalPelatihan: DateTime(2021, 5, 15),
      durasiPelatihan: Duration(days: 7),
      lokasiPelatihan: 'Jakarta',
    ),
    Pelatihan(
      namaPelatihan: 'Pelatihan Desain Grafis',
      tanggalPelatihan: DateTime(2020, 10, 20),
      durasiPelatihan: Duration(days: 5),
      lokasiPelatihan: 'Surabaya',
    ),
    Pelatihan(
      namaPelatihan: 'Pelatihan Manajemen Proyek',
      tanggalPelatihan: DateTime(2019, 8, 10),
      durasiPelatihan: Duration(days: 3),
      lokasiPelatihan: 'Bandung',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Pelatihan'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Daftar Pelatihan yang Sudah Diikuti',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: pelatihanList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.grey[300]!,
                        width: 1.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.only(bottom: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          pelatihanList[index].namaPelatihan,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          'Tanggal Pelatihan: ${pelatihanList[index].tanggalPelatihan.day}/${pelatihanList[index].tanggalPelatihan.month}/${pelatihanList[index].tanggalPelatihan.year}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Lokasi Pelatihan: ${pelatihanList[index].lokasiPelatihan}',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          'Durasi Pelatihan: ${pelatihanList[index].durasiPelatihan.inDays} hari',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
