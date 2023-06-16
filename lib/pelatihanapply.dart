import 'package:flutter/material.dart';
import 'pelatihandetail.dart';

class PelatihanApplyPage extends StatelessWidget {
  final List<Map<String, String>> pelatihan = [
    {
      'judul': 'Pelatihan Digital Marketing',
      'institusi': 'Digital Marketing Academy',
      'deskripsi':
          'Pelatihan ini akan memberikan Anda pengetahuan dan keterampilan dalam memasarkan produk atau jasa menggunakan media digital seperti website, email, dan media sosial.',
    },
    {
      'judul': 'Pelatihan Android Development',
      'institusi': 'Mobile App Development Course',
      'deskripsi':
          'Pelatihan ini akan memberikan Anda pengetahuan dan keterampilan dalam membangun aplikasi Android yang handal dan efisien menggunakan bahasa pemrograman Java atau Kotlin.',
    },
    {
      'judul': 'Pelatihan Public Speaking',
      'institusi': 'Public Speaking Academy',
      'deskripsi':
          'Pelatihan ini akan membantu Anda dalam membangun keterampilan berbicara di depan umum yang baik dan membangun kepercayaan diri Anda saat berbicara di depan orang banyak.',
    },
    {
      'judul': 'Pelatihan UI/UX Design',
      'institusi': 'Design Academy',
      'deskripsi':
          'Pelatihan ini akan membantu Anda dalam mempelajari prinsip-prinsip dasar desain antarmuka pengguna (UI) dan pengalaman pengguna (UX) untuk menciptakan produk yang mudah digunakan dan menarik.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pelatihan yang Sudah Diapply'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: pelatihan.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(pelatihan[index]['judul']!),
              subtitle: Text('Status: Menunggu Konfirmasi'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigasi ke halaman detail pelatihan
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PelatihanDetailPage(
                      judul: pelatihan[index]['judul']!,
                      institusi: pelatihan[index]['institusi']!,
                      deskripsi: pelatihan[index]['deskripsi']!,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
