///
//  Generated code. Do not modify.
//  source: lib/proto/service.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'package:grpc/service_api.dart' as $grpc;

import 'dart:core' as $core show int, String, List;

import 'service.pb.dart';
export 'service.pb.dart';

class AddServiceClient extends $grpc.Client {
  static final _$add = $grpc.ClientMethod<Request, Response>(
      '/proto.AddService/Add',
      (Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Response.fromBuffer(value));
  static final _$multiply = $grpc.ClientMethod<Request, Response>(
      '/proto.AddService/Multiply',
      (Request value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => Response.fromBuffer(value));

  AddServiceClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<Response> add(Request request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$add, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<Response> multiply(Request request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$multiply, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AddServiceBase extends $grpc.Service {
  $core.String get $name => 'proto.AddService';

  AddServiceBase() {
    $addMethod($grpc.ServiceMethod<Request, Response>(
        'Add',
        add_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Request.fromBuffer(value),
        (Response value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<Request, Response>(
        'Multiply',
        multiply_Pre,
        false,
        false,
        ($core.List<$core.int> value) => Request.fromBuffer(value),
        (Response value) => value.writeToBuffer()));
  }

  $async.Future<Response> add_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return add(call, await request);
  }

  $async.Future<Response> multiply_Pre(
      $grpc.ServiceCall call, $async.Future request) async {
    return multiply(call, await request);
  }

  $async.Future<Response> add($grpc.ServiceCall call, Request request);
  $async.Future<Response> multiply($grpc.ServiceCall call, Request request);
}
