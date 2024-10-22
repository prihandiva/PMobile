import 'dart:io';

void main() {
  int i, j, nilai, jmlsmt = 0, jumlahnilai, jumlahsks, totalsks = 0;
  List<List<int>> sks = List.generate(50, (i) => List.filled(30, 0));
  List<List<String>> nilaihuruf = List.generate(50, (i) => List.filled(30, ''));
  List<List<String>> matkul = List.generate(50, (i) => List.filled(30, ''));
  List<int> skssmt = List.filled(14, 0);
  List<double> nr = List.filled(14, 0.0);
  double totalnr = 0, ipk;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  // Validasi input jumlah semester
  while (true) {
    stdout.write("Masukkan jumlah semester: ");
    String? input = stdin.readLineSync();
    if (input != null && int.tryParse(input) != null) {
      jmlsmt = int.parse(input);
      if (jmlsmt >= 2 && jmlsmt <= 14) {
        break;
      } else {
        print("Jumlah semester harus antara 2 dan 14. Coba lagi.");
      }
    } else {
      print("Input tidak valid. Masukkan angka.");
    }
  }

  for (i = 0; i < jmlsmt; i++) {
    int jmlmk;
    jumlahnilai = 0;
    jumlahsks = 0;

    // Validasi input jumlah mata kuliah
    while (true) {
      stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
      String? input = stdin.readLineSync();
      if (input != null && int.tryParse(input) != null) {
        jmlmk = int.parse(input);
        if (jmlmk >= 2) {
          break;
        } else {
          print("Jumlah mata kuliah harus minimal 2. Coba lagi.");
        }
      } else {
        print("Input tidak valid. Masukkan angka.");
      }
    }

    for (j = 0; j < jmlmk; j++) {
      stdout.write("Masukkan mata kuliah ke-${j + 1}\n");
      stdout.write("Masukkan nama matkul: ");
      matkul[i][j] = stdin.readLineSync()!;

      // Validasi input jumlah SKS
      while (true) {
        stdout.write("Masukkan jumlah sks matkul: ");
        String? input = stdin.readLineSync();
        if (input != null && int.tryParse(input) != null) {
          sks[i][j] = int.parse(input);
          break;
        } else {
          print("Input tidak valid. Masukkan angka.");
        }
      }

      // Validasi input nilai huruf
      while (true) {
        stdout.write("Masukkan nilai matkul (A, B, C, D, E): ");
        String? nilaiInput = stdin.readLineSync();
        if (nilaiInput != null && ['A', 'B', 'C', 'D', 'E'].contains(nilaiInput.toUpperCase())) {
          nilaihuruf[i][j] = nilaiInput.toUpperCase();
          break;
        } else {
          print("Input tidak valid. Masukkan nilai huruf (A, B, C, D, E).");
        }
      }

      print("--------------------------------------------");

      // Menghitung nilai berdasarkan huruf
      if (nilaihuruf[i][j] == 'A') {
        nilai = 4 * sks[i][j];
      } else if (nilaihuruf[i][j] == 'B') {
        nilai = 3 * sks[i][j];
      } else if (nilaihuruf[i][j] == 'C') {
        nilai = 2 * sks[i][j];
      } else if (nilaihuruf[i][j] == 'D') {
        nilai = 1 * sks[i][j];
      } else {
        nilai = 0 * sks[i][j];
      }

      jumlahnilai += nilai;
      jumlahsks += sks[i][j];
    }

    if (jumlahsks > 24) {
      print("Jumlah SKS semester lebih dari 24. Program dihentikan.");
      return;
    } else {
      skssmt[i] = jumlahsks;
      nr[i] = jumlahnilai / jumlahsks;
    }
  }

  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (i = 0; i < jmlsmt; i++) {
    print("\nHasil Semester ${i + 1}:");
    print("\nMata Kuliah\tSKS\tNilai");

    for (j = 0; j < skssmt[i] / 2; j++) {
      print("${matkul[i][j]}\t\t${sks[i][j]}\t${nilaihuruf[i][j]}");
    }

    print("\nSKS\t: ${skssmt[i]}");
    print("NR\t: ${nr[i].toStringAsFixed(2)}");

    totalsks += skssmt[i];
    totalnr += nr[i];

    print("--------------------------------------------");
  }

  ipk = totalnr / jmlsmt;
  print("\nTotal SKS\t: $totalsks");
  print("IPK\t\t: ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}
