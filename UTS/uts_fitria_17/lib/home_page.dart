import 'package:flutter/material.dart';
import 'about_page.dart';
import 'profile_page.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  final List<Map<String, String>> menu = [
    {'name': 'Nasi Goreng', 'price': 'Rp 25.000', 'image': 'assets/nasi_goreng.png'},
    {'name': 'Ayam Bakar', 'price': 'Rp 30.000', 'image': 'assets/ayam_bakar.jpeg'},
    {'name': 'Mie Ayam', 'price': 'Rp 20.000', 'image': 'assets/mie_ayam.jpeg'},
    {'name': 'Bakso', 'price': 'Rp 18.000', 'image': 'assets/bakso.jpeg'},
    {'name': 'Sate Ayam', 'price': 'Rp 35.000', 'image': 'assets/sate_ayam.jpeg'},
    {'name': 'Gado-gado', 'price': 'Rp 22.000', 'image': 'assets/gado_gado.jpeg'},
    {'name': 'Soto Ayam', 'price': 'Rp 28.000', 'image': 'assets/soto_ayam.jpeg'},
    {'name': 'Rendang', 'price': 'Rp 40.000', 'image': 'assets/rendang.jpeg'},
    {'name': 'Nasi Uduk', 'price': 'Rp 15.000', 'image': 'assets/nasi_uduk.jpeg'},
    {'name': 'Es Teh Manis', 'price': 'Rp 8.000', 'image': 'assets/es_teh.jpeg'},
    {'name': 'Es Jeruk', 'price': 'Rp 10.000', 'image': 'assets/es_jeruk.jpeg'},
    {'name': 'Kopi Hitam', 'price': 'Rp 12.000', 'image': 'assets/kopi_hitam.jpeg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Makanan'),
        backgroundColor: Color(0xFF01153E),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ProfilePage(username: username)),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutPage()),
              );
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,  // Masih 3 kolom, bisa disesuaikan jika ingin lebih
          crossAxisSpacing: 8,  // Jarak horizontal antar item dikurangi
          mainAxisSpacing: 8,   // Jarak vertikal antar item dikurangi
          childAspectRatio: 0.75,  // Mengatur rasio tinggi-lebar untuk mengecilkan kotak
        ),
        itemCount: menu.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4,  // Menambahkan sedikit bayangan
            child: Padding(
              padding: const EdgeInsets.all(4.0),  // Mengurangi padding dalam kotak
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Gambar menu
                  Expanded(
                    child: Image.asset(
                      menu[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 4),
                  // Nama menu
                  Text(
                    menu[index]['name']!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,  // Ukuran font sedikit lebih kecil
                    ),
                    textAlign: TextAlign.center,
                  ),
                  // Harga menu
                  Text(
                    menu[index]['price']!,
                    style: TextStyle(color: Colors.grey, fontSize: 12),  // Font lebih kecil
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
