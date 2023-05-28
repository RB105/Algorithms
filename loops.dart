import 'dart:io';

void main(List<String> args) {
  print("K ni kiriting");
  int k = int.parse(stdin.readLineSync()!);
  // print("N ni kiriting");
  // int n = int.parse(stdin.readLineSync()!);
  int son = 0;
  int result = 0;
  for (int i = 1; i <= k; i++) {
    for (int j = 0; j < i; j++) {
      son = i*i;
    }
    result += son;
  }
  print("\n\nNatija  $result");
}
