//FITRIA RAMADHANI PRIHANDIVA - SIB 3D - 17
//JS #03 - SOAL 2
void main() {
  // Nama dan NIM
  String namaLengkap = "Fitria Ramadhani Prihandiva";
  String nim = "2241760055";

  // Fungsi untuk mengecek apakah sebuah angka adalah bilangan prima
  bool BilanganPrima(int angka) {
    if (angka < 2) return false;
    for (int i = 2; i <= angka ~/ 2; i++) {
      if (angka % i == 0) return false;
    }
    return true;
  }

  // Loop untuk mencari bilangan prima dari 0 sampai 201
  for (int angka = 0; angka <= 201; angka++) {
    if (BilanganPrima(angka)) {
      print('$angka adalah bilangan prima!');
      print('Nama: $namaLengkap');
      print('NIM: $nim\n');
    }
  }
}
