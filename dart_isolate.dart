import 'dart:isolate';

void main() {
  Isolate.spawn(sayHi, "Salom");
  Isolate.spawn(sayHi, "Hello World");
}

void sayHi(var msg) {
  print("excecution from sayHi is: $msg");
}
