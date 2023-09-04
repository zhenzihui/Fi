//
//  Generated code. Do not modify.
//  source: dm_define.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DMAttrBit extends $pb.ProtobufEnum {
  static const DMAttrBit DMAttrBitProtect = DMAttrBit._(0, _omitEnumNames ? '' : 'DMAttrBitProtect');
  static const DMAttrBit DMAttrBitFromLive = DMAttrBit._(1, _omitEnumNames ? '' : 'DMAttrBitFromLive');
  static const DMAttrBit DMAttrHighLike = DMAttrBit._(2, _omitEnumNames ? '' : 'DMAttrHighLike');

  static const $core.List<DMAttrBit> values = <DMAttrBit> [
    DMAttrBitProtect,
    DMAttrBitFromLive,
    DMAttrHighLike,
  ];

  static final $core.Map<$core.int, DMAttrBit> _byValue = $pb.ProtobufEnum.initByValue(values);
  static DMAttrBit? valueOf($core.int value) => _byValue[value];

  const DMAttrBit._($core.int v, $core.String n) : super(v, n);
}

class SubtitleType extends $pb.ProtobufEnum {
  static const SubtitleType CC = SubtitleType._(0, _omitEnumNames ? '' : 'CC');
  static const SubtitleType AI = SubtitleType._(1, _omitEnumNames ? '' : 'AI');

  static const $core.List<SubtitleType> values = <SubtitleType> [
    CC,
    AI,
  ];

  static final $core.Map<$core.int, SubtitleType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SubtitleType? valueOf($core.int value) => _byValue[value];

  const SubtitleType._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
