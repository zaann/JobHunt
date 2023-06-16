import 'package:flutter/material.dart';
import 'package:cobacobacoba/profil.dart';
import 'package:cobacobacoba/lowonganapply.dart';
import 'package:cobacobacoba/pelatihanapply.dart';
import 'package:cobacobacoba/manajemenkarir.dart';
import 'package:cobacobacoba/riwayatpelatihan.dart';

class AkunPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Akun Saya',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profil'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Lowongan Pekerjaan yang Sudah Diapply'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LowonganApplyPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Pelatihan yang Sudah Diapply'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PelatihanApplyPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.business_center),
                  title: Text('Manajemen Karir'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ManajemenKarirPage()),
                    );
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Riwayat Pelatihan'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RiwayatPelatihanPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
