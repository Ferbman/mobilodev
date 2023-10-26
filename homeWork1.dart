import 'dart:io';

void main() {
  while (true) {
    print(
        "işlem tipini seçiniz: \n 1- Toplama\n 2- Çıkarma\n 3- Çarpma\n 4- Bölme");
    int? selection = int.parse(stdin.readLineSync()!);
    switch (selection) {
      case 1:
        print("Toplamak istediginiz sayıları girin");
        int? a = int.parse(stdin.readLineSync()!);
        int? b = int.parse(stdin.readLineSync()!);
        int? c = int.parse(stdin.readLineSync()!);
        print(topla(a, b, c));
        break;

      case 2:
        print("Çıkarmak istediginiz sayıları girin");
        int? d = int.parse(stdin.readLineSync()!);
        int? c = int.parse(stdin.readLineSync()!);
        print(cikarma(a: d, b: c));
        break;

      case 3:
        print("Çarpmak istediginiz sayıları girin");
        int? a = int.parse(stdin.readLineSync()!);
        int? b = int.parse(stdin.readLineSync()!);

        print(carpma(a, b: b));

        break;

      case 4:
        print("Bölmek istediginiz sayıları girin");
        int? a = int.parse(stdin.readLineSync()!);
        int? b = int.parse(stdin.readLineSync()!);

        print(bolme(a, b));

        break;
      default:
        print("Yanlış seçim yaptınız.");

        break;
    }
  }
}

topla(int a, int b, [int c = 0]) {
  return a + b + c;
}

cikarma({int a = 0, int b = 0}) {
  return a - b;
}

carpma(int a, {int b = 1}) {
  return a * b;
}

bolme(int a, int b) {
  return a / b;
}
