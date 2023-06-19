import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false; // tambahkan variabel untuk menandakan loading

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Login Page'),
      //   backgroundColor: Colors.indigo.shade900, // ubah warna AppBar
      // ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: 'Enter your password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              child: Text('Login'),
              onPressed: () {
                setState(() {
                  _isLoading =
                      true; // set loading menjadi true saat tombol login ditekan
                });

                // simulasi pengambilan data dari server dengan delay 2 detik
                Future.delayed(Duration(seconds: 2), () {
                  setState(() {
                    _isLoading =
                        false; // set loading menjadi false saat data berhasil diambil
                  });

                  Navigator.pushNamed(context, '/dashboard');
                });

                // tampilkan AlertDialog dengan CircularProgressIndicator saat data sedang diambil
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Row(
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(width: 16.0),
                          Text('Loading...'),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
