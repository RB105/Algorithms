import 'dart:io';

void main(List<String> args) {
  int k = int.parse(stdin.readLineSync()!);
  // int n = int.parse(stdin.readLineSync()!);
  From1KgTo10Kg(k);
}

// k soni ni n marta
void kNtimes(int k, int n) {
  for (int i = 0; i < n; i++) {
    print(k);
  }
}

// k dan n gacha butun sonlar (k va  n ham kirsin)
void incrementFromKtoN(int k, int n) {
  if (k > n) {
    int counter = 0;
    for (int i = n; i <= k; i++) {
      print(i);
      counter++;
    }
    print("$counter marta");
  } else {
    int counter = 0;
    for (int i = k; i <= n; i++) {
      print(i);
      counter++;
    }
    print("$counter marta");
  }
}

// k dan n gacha yoki n dan k gacha sonlarni kamayish tartibida(k va n ham chiqsin)
void decrementFromKtoC(int k, int n) {
  if (k > n) {
    int counter = 0;
    for (int i = k; i >= n; i--) {
      print(i);
      counter++;
    }
    print("$counter marta");
  } else {
    int counter = 0;
    for (int i = n; i >= k; i--) {
      print(i);
      counter++;
    }
    print("$counter marta");
  }
}

void From1KgTo10Kg(int cost) {
  for (int i = 1; i <= 10; i++) {
    print("$i kg costs : ${i * cost}");
  }
}
