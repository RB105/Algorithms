void main(List<String> args) {
  List<int> list = [100, 23, 2331, 13, 2, 33, 245, 511, -1];
  bubbleSort(list);
  print(list);
}

bool isPrime(int son) {
  for (int i = 2; i < son; i++) {
    if (son % i == 0) {
      return false;
    }
  }
  return true;
}


void bubbleSort(List list) {
  for (var i = 0; i < list.length; i++) {
    for (var j = i; j < list.length; j++) {
      if (list[i] > list[j]) {
        int temp = list[i];
        list[i] = list[j];
        list[j] = temp;
      }
    }
  }
}

factorial(int son) {
  if (son == 1) {
    return 1;
  } else {
    return son * factorial(son - 1);
  }
}
