import 'package:basic_api/proto/generated/lib/proto/service.pbgrpc.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' as grpc;


class AddService extends AddServiceBase {

  @override
  Future<Response> add(grpc.ServiceCall call, Request request) async {

    print('got the request to add ${request.x} & ${request.y}');

    return Response()..result = request.x + request.y;
  }

  @override
  Future<Response> multiply(grpc.ServiceCall call, Request request) async {

    print('got the request to multiply ${request.x} & ${request.y}');

    return Response()..result = request.x * request.y;
  }
}

class Server {
  Future<void> main(List<String> args) async {
    final server = grpc.Server([AddService()]);
    await server.serve(port: 1111);
    print('Server listening on port ${server.port}...');
  }
}
