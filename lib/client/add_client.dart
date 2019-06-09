import 'package:basic_api/proto/generated/lib/proto/service.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';

class Client {
  ClientChannel channel;
  AddServiceClient stub;

  Future<void> main(List<String> args) async {
    //
    channel = ClientChannel('127.0.0.1',
        port: 1111,
        options: const ChannelOptions(
          credentials: const ChannelCredentials.insecure(),
        ));

    stub = AddServiceClient(channel,
        options: CallOptions(timeout: Duration(seconds: 30)));

    try {
      var result = await stub.add(Request()
        ..x = Int64(500)
        ..y = Int64(555));

      print('got the result: $result');
    } catch (e) {
      print(e);
    }

    await channel.shutdown();
  }
}
