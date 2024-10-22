import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: Color(0xFF01153E),
      ),
      body: SingleChildScrollView(  // Memungkinkan halaman untuk di-scroll jika kontennya banyak
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Gambar ilustrasi atau logo
            Image.asset(
              'assets/logo.jpg',  // Tambahkan gambar yang relevan di folder assets
              height: 150,
            ),
            SizedBox(height: 20),

            // Judul
            Text(
              'Tentang Webss Kitchen',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF01153E),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),

            // Deskripsi Aplikasi
            Text(
              'Webss Kitchen adalah aplikasi sederhana untuk menampilkan menu makanan. Saya memilih tema sistem restoran untuk diimplementasikan pada project Flutter UTS Semester 5. Program ini saya beri nama "WEBSS KITCHEN" karena saya mengambil project UTS Website saya, sehingga isi data akan sama dengan mata kuliah website.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5, // Spasi antar baris teks
              ),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 20),

            // Ikon dan keterangan
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.restaurant, size: 40, color: Colors.orange),
                SizedBox(width: 10),
                Text(
                  'Project Restoran Digital',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Informasi Tambahan
            Card(
              color: Color(0xFFF5F5F5),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Aplikasi ini menampilkan berbagai menu makanan yang tersedia di Webss Kitchen. Ini adalah bagian dari UTS Mobile Programming yang menggunakan Flutter. Dikembangkan dengan fokus pada navigasi, login, dan interaksi pengguna yang baik.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 20),

            // Tombol kembali ke halaman utama
            ElevatedButton.icon(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back, color: Colors.white),
              label: Text('Kembali'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF01153E), // Warna tombol sesuai tema
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
