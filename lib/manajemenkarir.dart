import 'package:flutter/material.dart';
import 'lowonganapply.dart';
import 'pelatihanapply.dart';

class ManajemenKarirPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manajemen Karir'),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hal-hal yang Diperlukan dalam Manajemen Karir',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '1. Pengenalan Diri',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Penting untuk mengenali diri sendiri, termasuk kekuatan, kelemahan, minat, dan nilai-nilai yang dimiliki. Hal ini membantu individu untuk memilih karir yang sesuai dengan keahlian dan minat mereka.',
              ),
              SizedBox(height: 16.0),
              Text(
                '2. Peningkatan Kemampuan',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Peningkatan kemampuan melalui pelatihan, sertifikasi, dan pengalaman kerja dapat membantu individu memperluas pengetahuan dan keterampilan mereka. Hal ini dapat membuka peluang untuk mendapatkan promosi atau mencari pekerjaan baru yang lebih baik.',
              ),
              SizedBox(height: 16.0),
              Text(
                '3. Perencanaan Karir',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Perencanaan karir membantu individu untuk menentukan tujuan karir jangka panjang dan merencanakan tindakan yang diperlukan untuk mencapai tujuan tersebut. Hal ini meliputi mengevaluasi karir saat ini, memperkirakan peluang karir di masa depan, dan menentukan langkah-langkah yang perlu dilakukan untuk mencapai tujuan karir.',
              ),
              SizedBox(height: 16.0),
              Text(
                '4. Networking',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Networking dapat membantu individu memperluas jaringan kontak, mencari peluang karir, dan membangun hubungan yang bermanfaat untuk karir mereka. Hal ini dapat dilakukan melalui kegiatan sosial, seminar, konferensi, atau melalui media sosial.',
              ),
              SizedBox(height: 32.0),
              Text(
                'Manajemen Karir di Perusahaan',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Perusahaan dapat membantu karyawan dalam manajemen karir mereka melalui program pengembangan karir, mentoring, coaching, atau program rotasi jabatan. Program-program ini membantu karyawan untuk mengembangkan keterampilan dan pengalaman yang dibutuhkan untuk mencapai tujuan karir mereka.',
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
