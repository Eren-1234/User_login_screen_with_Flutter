import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo için Container
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(16),
              child: Image.asset(
                'assets/images/Istanbul-Medeniyet-University.png',
                width: 150,
              ),
            ),
            SizedBox(height: 20),

            // Kullanıcı adı alanı
            Container(
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Şifre alanı
            Container(
              color: Colors.white,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Giriş Yapıldı');
              },
              child: Text('Giriş Yap'),
            ),
          ],
        ),
      ),
    );
  }
}
