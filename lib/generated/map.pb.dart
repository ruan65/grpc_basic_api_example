///
//  Generated code. Do not modify.
//  source: map.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class Person extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Person', package: const $pb.PackageName('proto'))
    ..aOS(1, 'name')
    ..aInt64(2, 'age')
    ..hasRequiredFields = false
  ;

  Person._() : super();
  factory Person() => create();
  factory Person.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Person.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Person clone() => Person()..mergeFromMessage(this);
  Person copyWith(void Function(Person) updates) => super.copyWith((message) => updates(message as Person));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Person create() => Person._();
  Person createEmptyInstance() => create();
  static $pb.PbList<Person> createRepeated() => $pb.PbList<Person>();
  static Person getDefault() => _defaultInstance ??= create()..freeze();
  static Person _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) { $_setString(0, v); }
  $core.bool hasName() => $_has(0);
  void clearName() => clearField(1);

  Int64 get age => $_getI64(1);
  set age(Int64 v) { $_setInt64(1, v); }
  $core.bool hasAge() => $_has(1);
  void clearAge() => clearField(2);
}

class Dictionary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Dictionary', package: const $pb.PackageName('proto'))
    ..m<$core.String, $core.String>(1, 'pairs', 'Dictionary.PairsEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OS, null, null, null , const $pb.PackageName('proto'))
    ..hasRequiredFields = false
  ;

  Dictionary._() : super();
  factory Dictionary() => create();
  factory Dictionary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Dictionary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Dictionary clone() => Dictionary()..mergeFromMessage(this);
  Dictionary copyWith(void Function(Dictionary) updates) => super.copyWith((message) => updates(message as Dictionary));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Dictionary create() => Dictionary._();
  Dictionary createEmptyInstance() => create();
  static $pb.PbList<Dictionary> createRepeated() => $pb.PbList<Dictionary>();
  static Dictionary getDefault() => _defaultInstance ??= create()..freeze();
  static Dictionary _defaultInstance;

  $core.Map<$core.String, $core.String> get pairs => $_getMap(0);
}

class Devices extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Devices', package: const $pb.PackageName('proto'))
    ..m<$core.String, $core.String>(1, 'devicesMap', 'Devices.DevicesMapEntry',$pb.PbFieldType.OS, $pb.PbFieldType.OS, null, null, null , const $pb.PackageName('proto'))
    ..hasRequiredFields = false
  ;

  Devices._() : super();
  factory Devices() => create();
  factory Devices.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Devices.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Devices clone() => Devices()..mergeFromMessage(this);
  Devices copyWith(void Function(Devices) updates) => super.copyWith((message) => updates(message as Devices));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Devices create() => Devices._();
  Devices createEmptyInstance() => create();
  static $pb.PbList<Devices> createRepeated() => $pb.PbList<Devices>();
  static Devices getDefault() => _defaultInstance ??= create()..freeze();
  static Devices _defaultInstance;

  $core.Map<$core.String, $core.String> get devicesMap => $_getMap(0);
}

