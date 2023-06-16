import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage(
                  'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50'),
            ),
            SizedBox(height: 16.0),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'john.doe@example.com',
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
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
    );
  }
}
