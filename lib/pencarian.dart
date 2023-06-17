import 'package:flutter/material.dart';

import 'apply.dart';

class PencarianPage extends StatefulWidget {
  @override
  _PencarianPageState createState() => _PencarianPageState();
}

class _PencarianPageState extends State<PencarianPage> {
  final String _placeholder = 'Cari pekerjaan atau pelatihan/magang';
  bool _isPekerjaanSelected = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Pencarian',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          TextFormField(
            decoration: InputDecoration(
              hintText: _placeholder,
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Jenis Pencarian',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildPilihanJenisPencarian(
                  context, 'Pekerjaan', _isPekerjaanSelected),
              _buildPilihanJenisPencarian(
                  context, 'Pelatihan/Magang', !_isPekerjaanSelected),
            ],
          ),
          SizedBox(height: 16.0),
          Text(
            'Hasil Pencarian',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          _isPekerjaanSelected
              ? _buildLowonganPekerjaan(context)
              : _buildLowonganPelatihan(context),
        ],
      ),
    );
  }

  Widget _buildLowonganPekerjaan(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPekerjaanPage()),
            );
          },
          child: Card(
            child: ListTile(
              title: Text('Web Developer'),
              subtitle: Text('PT. ABC'),
              trailing: Text('25 Juni 2023'),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPekerjaanPage1()),
            );
          },
          child: Card(
            child: ListTile(
              title: Text('UI/UX Designer'),
              subtitle: Text('PT. XYZ'),
              trailing: Text('30 Juni 2023'),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPekerjaanPage2()),
            );
          },
          child: Card(
            child: ListTile(
              title: Text('Data Analyst'),
              subtitle: Text('PT. DEF'),
              trailing: Text('15 Juli 2023'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLowonganPelatihan(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPelatihanPage()),
            );
          },
          child: Card(
            child: ListTile(
              title: Text('Pelatihan Web Development'),
              subtitle: Text('PT. ABC'),
              trailing: Text('25 Juni 2023'),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPelatihanPage1()),
            );
          },
          child: Card(
            child: ListTile(
              title: Text('Magang UI/UX Designer'),
              subtitle: Text('PT. XYZ'),
              trailing: Text('30 Juni 2023'),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailPelatihanPage2()),
            );
          },
          child: Card(
            child: ListTile(
              title: Text('Pelatihan Data Science'),
              subtitle: Text('PT. DEF'),
              trailing: Text('15 Juli 2023'),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPilihanJenisPencarian(
      BuildContext context, String jenis, bool isSelected) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isPekerjaanSelected = jenis == 'Pekerjaan';
        });
        String message = 'Anda memilih pencarian $jenis';
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(message),
          duration: Duration(seconds: 2),
        ));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(16.0),
          color: isSelected ? Colors.blue : Colors.white,
        ),
        child: Text(
          jenis,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}

class DetailPekerjaanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pekerjaan'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Web Developer',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'PT. ABC',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi Pekerjaan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Melakukan pengembangan aplikasi web dengan menggunakan teknologi terbaru',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Persyaratan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '- Memiliki pengalaman minimal 2 tahun dalam pengembangan aplikasi web\n- Menguasai bahasa pemrograman PHP dan JavaScript\n- Memiliki kemampuan analisis yang baik',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplyPage()),
                );
              },
              child: Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPekerjaanPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pekerjaan'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'UI/UX BLABALBALBAL',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'PT. ABC',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi Pekerjaan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Melakukan pengembangan aplikasi web dengan menggunakan teknologi terbaru',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Persyaratan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '- Memiliki pengalaman minimal 2 tahun dalam pengembangan aplikasi web\n- Menguasai bahasa pemrograman PHP dan JavaScript\n- Memiliki kemampuan analisis yang baik',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplyPage()),
                );
              },
              child: Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPekerjaanPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pekerjaan'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'DATA ANALYST BLBALBALAB',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'PT. ABC',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi Pekerjaan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Melakukan pengembangan aplikasi web dengan menggunakan teknologi terbaru',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Persyaratan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '- Memiliki pengalaman minimal 2 tahun dalam pengembangan aplikasi web\n- Menguasai bahasa pemrograman PHP dan JavaScript\n- Memiliki kemampuan analisis yang baik',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplyPage()),
                );
              },
              child: Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPelatihanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pelatihan'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pelatihan Web Development',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'PT. ABC',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi Pelatihan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Pelatihan ini akan membahas tentang teknologi pengembangan aplikasi web yang terbaru',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Persyaratan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '- Memiliki pengetahuan dasar tentang bahasa pemrograman\n- Memiliki kemampuan analisis yang baik\n- Bersedia belajar dengan tekun',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplyPage()),
                );
              },
              child: Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPelatihanPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pelatihan'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'MAGANG UI/UX BLABLBALBA',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'PT. ABC',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi Pelatihan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Pelatihan ini akan membahas tentang teknologi pengembangan aplikasi web yang terbaru',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Persyaratan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '- Memiliki pengetahuan dasar tentang bahasa pemrograman\n- Memiliki kemampuan analisis yang baik\n- Bersedia belajar dengan tekun',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplyPage()),
                );
              },
              child: Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailPelatihanPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Pelatihan'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'PELATIHAN DATA SCIENCE',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'PT. ABC',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Deskripsi Pelatihan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Pelatihan ini akan membahas tentang teknologi pengembangan aplikasi web yang terbaru',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Persyaratan',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '- Memiliki pengetahuan dasar tentang bahasa pemrograman\n- Memiliki kemampuan analisis yang baik\n- Bersedia belajar dengan tekun',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ApplyPage()),
                );
              },
              child: Text('Apply'),
            ),
          ],
        ),
      ),
    );
  }
}
