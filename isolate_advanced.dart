import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'dart:isolate';

void main() async {
  ReceivePort receivePort =ReceivePort();

  final isolate1 = await Isolate.spawn(getCurrency, receivePort.sendPort);
  final isolate2 = await Isolate.spawn(getUsers, receivePort.sendPort);
  final results = await receivePort.take(2).toList();
  print(results);

  isolate1.kill();
  isolate2.kill();
}

Future<void> getCurrency(SendPort sendPort) async {
  final httpClient = HttpClient();
  final request = await httpClient.getUrl(Uri.parse("https://nbu.uz/uz/exchange-rates/json/"));
  final response = await request.close();
  final responseBody = response.transform(utf8.decoder).join();
  sendPort.send(responseBody);
}
Future<void> getUsers(SendPort sendPort) async {
  final httpClient = HttpClient();
  final request = await httpClient.getUrl(Uri.parse("https://jsonplaceholder.typicode.com/users"));
  final response = await request.close();
  final responseBody = response.transform(utf8.decoder).join();
  sendPort.send(responseBody);
}




/////
///
///
///
///
///
///
///
///





/////

// stdout.writeln('Starting Isolate...');
// await start();
// stdout.writeln('Hit enter key to quit');
// await stdin.first;
// stop();
// stdout.writeln('Bye!');
// exit(0);

Isolate? isolate;

// Start the isolate
Future<void> start() async {
  ReceivePort receiverPort =
      ReceivePort(); // Port for isolate to receive message.

  isolate = await Isolate.spawn(runTimer, receiverPort.sendPort);
  receiverPort.listen((message) {
    stdout.write("Receiving" + message + ',');
  });
}

void runTimer(SendPort sendPort) {
  int count = 0;
  Timer.periodic(Duration(seconds: 1), (Timer t) {
    count++;
    String msg = 'notification ' + count.toString();
    stdout.write('Sending: ' + msg + ' -');
    sendPort.send(msg);
  });
}

// Stopping the isolate using the stop() function.
void stop() {
  if (isolate != null) {
    stdout.writeln('Stopping Isolate.....');
    isolate!.kill(priority: Isolate.immediate);
    isolate = null;
  }
}
