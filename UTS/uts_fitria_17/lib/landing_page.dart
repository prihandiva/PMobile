import 'package:flutter/material.dart';
import 'login_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'), // Ganti dengan path gambar background Anda
            fit: BoxFit.cover, // Mengatur gambar agar menutupi seluruh background
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Tambahkan logo di sini
              Image.asset(
                'assets/logo.jpg', // Pastikan file logo.jpg berada di folder assets
                height: 150, // Sesuaikan ukuran gambar
              ),
              SizedBox(height: 20), // Beri jarak antara logo dan teks
              
              // Container dengan background solid color untuk teks
              Container(
                padding: EdgeInsets.all(10), // Padding untuk jarak antara teks dan background
                color: Colors.black.withOpacity(0.5), // Warna background teks dengan transparansi
                child: const Text(
                  'Selamat Datang di Webss Kitchen | Ini adalah Tugas UTS Mobile',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 24,
                    fontFamily: 'Poppins', // Ubah font menjadi Poppins
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              
              SizedBox(height: 10), // Beri jarak antara teks atas dan teks bawah
              
              // Container kedua untuk teks berikutnya
              Container(
                padding: EdgeInsets.all(10), // Padding untuk jarak antara teks dan background
                color: Colors.black.withOpacity(0.5), // Warna background teks dengan transparansi
                child: const Text(
                  'Fitria Ramadhani Prihandiva | SIB 3D | 17',
                  style: TextStyle(
                    color: Colors.white, 
                    fontSize: 24,
                    fontFamily: 'Poppins', // Ubah font menjadi Poppins
                  ),
                  textAlign: TextAlign.center,
                ),
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
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20), // Ukuran tombol
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins', // Ubah font tombol menjadi Poppins
                  ),
                ),
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
