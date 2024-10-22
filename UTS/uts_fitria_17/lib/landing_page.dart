import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF01153E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Tambahkan logo di sini
            Image.asset(
              'assets/logo.jpg', // Pastikan file logo.png berada di folder assets
              height: 150, // Sesuaikan ukuran gambar
            ),
            SizedBox(height: 20), // Beri jarak antara logo dan teks
            Text(
              'Selamat Datang di Webss Kitchen | Ini adalah Tugas UTS Mobile',
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10), // Beri jarak antara teks atas dan teks bawah
            Text(
              'Fitria Ramadhani Prihandiva | SIB 3D | 17',
              style: TextStyle(color: Colors.white, fontSize: 24),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30), // Beri jarak antara teks dan tombol
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Ukuran tombol
                textStyle: TextStyle(fontSize: 20), // Ukuran teks pada tombol
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
