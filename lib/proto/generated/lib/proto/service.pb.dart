///
//  Generated code. Do not modify.
//  source: lib/proto/service.proto
///
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Request extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Request', package: const $pb.PackageName('proto'))
    ..aInt64(1, 'x')
    ..aInt64(2, 'y')
    ..hasRequiredFields = false
  ;

  Request() : super();
  Request.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Request.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Request clone() => Request()..mergeFromMessage(this);
  Request copyWith(void Function(Request) updates) => super.copyWith((message) => updates(message as Request));
  $pb.BuilderInfo get info_ => _i;
  static Request create() => Request();
  Request createEmptyInstance() => create();
  static $pb.PbList<Request> createRepeated() => $pb.PbList<Request>();
  static Request getDefault() => _defaultInstance ??= create()..freeze();
  static Request _defaultInstance;

  Int64 get x => $_getI64(0);
  set x(Int64 v) { $_setInt64(0, v); }
  $core.bool hasX() => $_has(0);
  void clearX() => clearField(1);

  Int64 get y => $_getI64(1);
  set y(Int64 v) { $_setInt64(1, v); }
  $core.bool hasY() => $_has(1);
  void clearY() => clearField(2);
}

class Response extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Response', package: const $pb.PackageName('proto'))
    ..aInt64(1, 'result')
    ..hasRequiredFields = false
  ;

  Response() : super();
  Response.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);
  Response.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);
  Response clone() => Response()..mergeFromMessage(this);
  Response copyWith(void Function(Response) updates) => super.copyWith((message) => updates(message as Response));
  $pb.BuilderInfo get info_ => _i;
  static Response create() => Response();
  Response createEmptyInstance() => create();
  static $pb.PbList<Response> createRepeated() => $pb.PbList<Response>();
  static Response getDefault() => _defaultInstance ??= create()..freeze();
  static Response _defaultInstance;

  Int64 get result => $_getI64(0);
  set result(Int64 v) { $_setInt64(0, v); }
  $core.bool hasResult() => $_has(0);
  void clearResult() => clearField(1);
}

