//FITRIA RAMADHANI PRIHANDIVA - SIB 3D - 17
//JS #04

//LIST
//LANGKAH 1
void main() {
  // var list = [1, 2, 3];
  // assert(list.length == 3);
  // assert(list[1] == 2);
  // print(list.length);
  // print(list[1]);

  // list[1] = 1;
  // assert(list[1] == 1);
  // print(list[1]);

  //Langkah 3

  final List<String?> list = List.filled(5, null); // Membuat list dengan panjang 5 dan nilai default null
  list[1] = 'Fitria Ramadhani Prihandiva'; // Mengisi nama pada indeks ke-1
  list[2] = '2241760055'; // Mengisi NIM pada indeks ke-2

  print(list); // Menampilkan seluruh elemen list
}
