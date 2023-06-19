import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
        backgroundColor: Colors.indigo.shade900, // ubah warna AppBar
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              // Tambahkan logika untuk mengedit profil pengguna
            },
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Tambahkan logika untuk keluar dari aplikasi
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(
                      'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50',
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Center(
                  child: Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Center(
                  child: Text(
                    'john.doe@example.com',
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                Divider(),
                SizedBox(height: 16.0),
                Text(
                  'Deskripsi',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac risus vel est fringilla vestibulum. Nullam euismod felis at sapien hendrerit, nec consectetur augue commodo. Integer bibendum, est eu malesuada iaculis, velit nibh bibendum nibh, vel finibus elit nunc vel nibh. ',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
