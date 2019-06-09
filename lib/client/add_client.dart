import 'dart:convert';
import 'dart:io';

import 'package:basic_api/proto/generated/lib/proto/service.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

class Client {
  ClientChannel channel;
  AddServiceClient stub;

  Future<void> main(List<String> args) async {
    //
    channel = ClientChannel('127.0.0.1',
//    channel = ClientChannel('localhost',
        port: 1111,
        options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure(),
        ));

    stub = AddServiceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));

    while (true) {
      print('what to do?');
      var action = stdin.readLineSync();

      if (action == 'exit') {
        await channel.shutdown();
        return;
      }

      print('enter x');
      var x = stdin.readLineSync();
      print('enter y');
      var y = stdin.readLineSync();

      var additionRes = await (action == 'add'
          ? addition(int.parse(x), int.parse(y))
          : mult(int.parse(x), int.parse(y)));

      print('result: ${additionRes ?? 'no result'}');
    }
  }

  Future<Int64> addition(int a, int b) async {
    try {
      var result = await stub.add(Request()
        ..x = Int64(a)
        ..y = Int64(b));
      return result.result;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<Int64> mult(int a, int b) async {
    try {
      var result = await stub.multiply(Request()
        ..x = Int64(a)
        ..y = Int64(b));
      return result.result;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
