import 'package:flutter/material.dart';
import 'lowongandetail.dart';

class LowonganApplyPage extends StatelessWidget {
  final List<Map<String, String>> lowonganPekerjaan = [
    {
      'judul': 'Front-end Developer',
      'perusahaan': 'PT. ABC',
      'deskripsi':
          'Kami mencari seorang front-end developer yang handal untuk bergabung dalam tim kami. Kandidat harus memiliki pengalaman dalam membangun aplikasi web yang kompleks dengan menggunakan HTML, CSS, dan JavaScript.',
    },
    {
      'judul': 'Back-end Developer',
      'perusahaan': 'PT. XYZ',
      'deskripsi':
          'Kami mencari seorang back-end developer yang berpengalaman untuk membantu kami dalam membangun infrastruktur sistem kami. Kandidat harus memiliki pengetahuan yang baik dalam bahasa pemrograman seperti Python, Java, atau Ruby.',
    },
    {
      'judul': 'UI/UX Designer',
      'perusahaan': 'PT. DEF',
      'deskripsi':
          'Kami mencari seorang designer yang kreatif dan berpengalaman untuk merancang pengalaman pengguna yang unik dan menarik untuk produk kami. Kandidat harus memiliki pengetahuan dalam penggunaan Adobe XD atau Figma.',
    },
    {
      'judul': 'Data Analyst',
      'perusahaan': 'PT. GHI',
      'deskripsi':
          'Kami mencari seorang data analyst yang handal untuk membantu kami dalam mengumpulkan, menganalisis, dan menginterpretasi data. Kandidat harus memiliki pengalaman dalam menggunakan bahasa pemrograman seperti Python atau R.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lowongan Pekerjaan yang Sudah Diapply'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: FutureBuilder(
        future: Future.delayed(
            Duration(seconds: 2)), // simulasi pengambilan data dari server
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            // tampilkan animasi loading saat data sedang diambil dari server
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Container(
              padding: EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: lowonganPekerjaan.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.grey[100],
                    child: ListTile(
                      title: Text(lowonganPekerjaan[index]['judul']!),
                      subtitle: Text('Status: Menunggu Konfirmasi'),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Navigasi ke halaman detail lowongan pekerjaan
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LowonganDetailPage(
                              judul: lowonganPekerjaan[index]['judul']!,
                              perusahaan: lowonganPekerjaan[index]
                                  ['perusahaan']!,
                              deskripsi: lowonganPekerjaan[index]['deskripsi']!,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            );
          }
        },
      ),
    );
  }
}
