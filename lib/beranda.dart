import 'package:flutter/material.dart';

class BerandaPage extends StatefulWidget {
  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  final List<Perusahaan> _listPerusahaan = [
    Perusahaan(
      nama: 'PT. ABC',
      deskripsi: 'Perusahaan IT yang bergerak di bidang pengembangan aplikasi',
      lowongan: [
        LowonganPekerjaan(
          nama: 'Web Developer',
          persyaratan:
              '- Memiliki pengalaman minimal 2 tahun dalam pengembangan aplikasi web\n- Menguasai bahasa pemrograman PHP dan JavaScript\n- Memiliki kemampuan analisis yang baik',
        ),
        LowonganPekerjaan(
          nama: 'UI/UX Designer',
          persyaratan:
              '- Memiliki pengalaman minimal 2 tahun dalam mendesain aplikasi\n- Menguasai Adobe Photoshop dan Sketch\n- Memiliki kemampuan analisis yang baik',
        ),
      ],
    ),
    Perusahaan(
      nama: 'PT. XYZ',
      deskripsi: 'Perusahaan konsultan manajemen',
      lowongan: [
        LowonganPekerjaan(
          nama: 'Manajer Proyek',
          persyaratan:
              '- Memiliki pengalaman minimal 5 tahun di bidang manajemen proyek\n- Memiliki kemampuan analisis yang baik\n- Memiliki kemampuan komunikasi yang baik',
        ),
        LowonganPekerjaan(
          nama: 'Konsultan Keuangan',
          persyaratan:
              '- Memiliki pengalaman minimal 3 tahun di bidang konsultan keuangan\n- Memiliki kemampuan analisis yang baik\n- Memiliki sertifikasi sebagai konsultan keuangan',
        ),
      ],
    ),
    Perusahaan(
      nama: 'PT. DEF',
      deskripsi: 'Perusahaan manufaktur',
      lowongan: [
        LowonganPekerjaan(
          nama: 'Quality Control',
          persyaratan:
              '- Memiliki pengalaman minimal 2 tahun di bidang quality control\n- Memiliki kemampuan analisis yang baik\n- Memiliki sertifikasi ISO 9001',
        ),
        LowonganPekerjaan(
          nama: 'Marketing',
          persyaratan:
              '- Memiliki pengalaman minimal 2 tahun di bidang marketing\n- Memiliki kemampuan analisis yang baik\n- Memiliki kemampuan komunikasi yang baik',
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Beranda',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Lowongan Pekerjaan Terbaru',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Expanded(
            child: ListView.builder(
              itemCount: _listPerusahaan.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPerusahaanPage(
                          perusahaan: _listPerusahaan[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    child: ListTile(
                      title: Text(_listPerusahaan[index].nama),
                      subtitle: Text(_listPerusahaan[index].deskripsi),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Perusahaan {
  final String nama;
  final String deskripsi;
  final List<LowonganPekerjaan> lowongan;

  Perusahaan({
    required this.nama,
    required this.deskripsi,
    required this.lowongan,
  });
}

class LowonganPekerjaan {
  final String nama;
  final String persyaratan;

  LowonganPekerjaan({
    required this.nama,
    required this.persyaratan,
  });
}

class DetailPerusahaanPage extends StatelessWidget {
  final Perusahaan perusahaan;

  DetailPerusahaanPage({required this.perusahaan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(perusahaan.nama),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              perusahaan.nama,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              perusahaan.deskripsi,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Lowongan Pekerjaan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Expanded(
              child: ListView.builder(
                itemCount: perusahaan.lowongan.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(perusahaan.lowongan[index].nama),
                      subtitle: Text(perusahaan.lowongan[index].persyaratan),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // TODO: Implement apply job function
                        },
                        child: Text('Apply'),
                      ),
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
