import 'package:flutter/material.dart';

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
                    // TODO: Navigate to profil page
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.work),
                  title: Text('Lowongan Pekerjaan yang Sudah Diapply'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // TODO: Navigate to lowongan page
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Pelatihan yang Sudah Diapply'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // TODO: Navigate to pelatihan page
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.business_center),
                  title: Text('Manajemen Karir'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // TODO: Navigate to manajemen karir page
                  },
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text('Riwayat Pelatihan'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // TODO: Navigate to riwayat pelatihan page
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
