//FITRIA RAMADHANI PRIHANDIVA - SIB 3D - 17
//JS #03

//FOR
//LANGKAH 1
void main() {
  int index;
  for (index = 10; index < 27; index) {
    print(index);

    if (index == 21)
      break;
    else if (index > 1 || index < 7) continue;
    print(index);
  }
}
