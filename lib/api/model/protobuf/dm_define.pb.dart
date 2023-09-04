//
//  Generated code. Do not modify.
//  source: dm_define.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'dm_define.pbenum.dart';

export 'dm_define.pbenum.dart';

class BuzzwordConfig extends $pb.GeneratedMessage {
  factory BuzzwordConfig({
    $core.Iterable<BuzzwordShowConfig>? keywords,
  }) {
    final $result = create();
    if (keywords != null) {
      $result.keywords.addAll(keywords);
    }
    return $result;
  }
  BuzzwordConfig._() : super();
  factory BuzzwordConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuzzwordConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuzzwordConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..pc<BuzzwordShowConfig>(1, _omitFieldNames ? '' : 'keywords', $pb.PbFieldType.PM, subBuilder: BuzzwordShowConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuzzwordConfig clone() => BuzzwordConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuzzwordConfig copyWith(void Function(BuzzwordConfig) updates) => super.copyWith((message) => updates(message as BuzzwordConfig)) as BuzzwordConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuzzwordConfig create() => BuzzwordConfig._();
  BuzzwordConfig createEmptyInstance() => create();
  static $pb.PbList<BuzzwordConfig> createRepeated() => $pb.PbList<BuzzwordConfig>();
  @$core.pragma('dart2js:noInline')
  static BuzzwordConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuzzwordConfig>(create);
  static BuzzwordConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BuzzwordShowConfig> get keywords => $_getList(0);
}

class BuzzwordShowConfig extends $pb.GeneratedMessage {
  factory BuzzwordShowConfig({
    $core.String? name,
    $core.String? schema,
    $core.int? source,
    $fixnum.Int64? id,
    $fixnum.Int64? buzzwordId,
    $core.int? schemaType,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (schema != null) {
      $result.schema = schema;
    }
    if (source != null) {
      $result.source = source;
    }
    if (id != null) {
      $result.id = id;
    }
    if (buzzwordId != null) {
      $result.buzzwordId = buzzwordId;
    }
    if (schemaType != null) {
      $result.schemaType = schemaType;
    }
    return $result;
  }
  BuzzwordShowConfig._() : super();
  factory BuzzwordShowConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuzzwordShowConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BuzzwordShowConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'schema')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'source', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'id')
    ..aInt64(5, _omitFieldNames ? '' : 'buzzwordId')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'schemaType', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuzzwordShowConfig clone() => BuzzwordShowConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuzzwordShowConfig copyWith(void Function(BuzzwordShowConfig) updates) => super.copyWith((message) => updates(message as BuzzwordShowConfig)) as BuzzwordShowConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BuzzwordShowConfig create() => BuzzwordShowConfig._();
  BuzzwordShowConfig createEmptyInstance() => create();
  static $pb.PbList<BuzzwordShowConfig> createRepeated() => $pb.PbList<BuzzwordShowConfig>();
  @$core.pragma('dart2js:noInline')
  static BuzzwordShowConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuzzwordShowConfig>(create);
  static BuzzwordShowConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get schema => $_getSZ(1);
  @$pb.TagNumber(2)
  set schema($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get source => $_getIZ(2);
  @$pb.TagNumber(3)
  set source($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSource() => $_has(2);
  @$pb.TagNumber(3)
  void clearSource() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get id => $_getI64(3);
  @$pb.TagNumber(4)
  set id($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasId() => $_has(3);
  @$pb.TagNumber(4)
  void clearId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get buzzwordId => $_getI64(4);
  @$pb.TagNumber(5)
  set buzzwordId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBuzzwordId() => $_has(4);
  @$pb.TagNumber(5)
  void clearBuzzwordId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get schemaType => $_getIZ(5);
  @$pb.TagNumber(6)
  set schemaType($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSchemaType() => $_has(5);
  @$pb.TagNumber(6)
  void clearSchemaType() => clearField(6);
}

class CommandDm extends $pb.GeneratedMessage {
  factory CommandDm({
    $fixnum.Int64? id,
    $fixnum.Int64? oid,
    $core.String? mid,
    $core.String? command,
    $core.String? content,
    $core.int? progress,
    $core.String? ctime,
    $core.String? mtime,
    $core.String? extra,
    $core.String? idStr,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (mid != null) {
      $result.mid = mid;
    }
    if (command != null) {
      $result.command = command;
    }
    if (content != null) {
      $result.content = content;
    }
    if (progress != null) {
      $result.progress = progress;
    }
    if (ctime != null) {
      $result.ctime = ctime;
    }
    if (mtime != null) {
      $result.mtime = mtime;
    }
    if (extra != null) {
      $result.extra = extra;
    }
    if (idStr != null) {
      $result.idStr = idStr;
    }
    return $result;
  }
  CommandDm._() : super();
  factory CommandDm.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandDm.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CommandDm', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..aOS(3, _omitFieldNames ? '' : 'mid')
    ..aOS(4, _omitFieldNames ? '' : 'command')
    ..aOS(5, _omitFieldNames ? '' : 'content')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'progress', $pb.PbFieldType.O3)
    ..aOS(7, _omitFieldNames ? '' : 'ctime')
    ..aOS(8, _omitFieldNames ? '' : 'mtime')
    ..aOS(9, _omitFieldNames ? '' : 'extra')
    ..aOS(10, _omitFieldNames ? '' : 'idStr', protoName: 'idStr')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandDm clone() => CommandDm()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandDm copyWith(void Function(CommandDm) updates) => super.copyWith((message) => updates(message as CommandDm)) as CommandDm;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CommandDm create() => CommandDm._();
  CommandDm createEmptyInstance() => create();
  static $pb.PbList<CommandDm> createRepeated() => $pb.PbList<CommandDm>();
  @$core.pragma('dart2js:noInline')
  static CommandDm getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandDm>(create);
  static CommandDm? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get mid => $_getSZ(2);
  @$pb.TagNumber(3)
  set mid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMid() => $_has(2);
  @$pb.TagNumber(3)
  void clearMid() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get command => $_getSZ(3);
  @$pb.TagNumber(4)
  set command($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCommand() => $_has(3);
  @$pb.TagNumber(4)
  void clearCommand() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get content => $_getSZ(4);
  @$pb.TagNumber(5)
  set content($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasContent() => $_has(4);
  @$pb.TagNumber(5)
  void clearContent() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get progress => $_getIZ(5);
  @$pb.TagNumber(6)
  set progress($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasProgress() => $_has(5);
  @$pb.TagNumber(6)
  void clearProgress() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get ctime => $_getSZ(6);
  @$pb.TagNumber(7)
  set ctime($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCtime() => $_has(6);
  @$pb.TagNumber(7)
  void clearCtime() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get mtime => $_getSZ(7);
  @$pb.TagNumber(8)
  set mtime($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMtime() => $_has(7);
  @$pb.TagNumber(8)
  void clearMtime() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get extra => $_getSZ(8);
  @$pb.TagNumber(9)
  set extra($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasExtra() => $_has(8);
  @$pb.TagNumber(9)
  void clearExtra() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get idStr => $_getSZ(9);
  @$pb.TagNumber(10)
  set idStr($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasIdStr() => $_has(9);
  @$pb.TagNumber(10)
  void clearIdStr() => clearField(10);
}

class DanmakuAIFlag extends $pb.GeneratedMessage {
  factory DanmakuAIFlag({
    $core.Iterable<DanmakuFlag>? dmFlags,
  }) {
    final $result = create();
    if (dmFlags != null) {
      $result.dmFlags.addAll(dmFlags);
    }
    return $result;
  }
  DanmakuAIFlag._() : super();
  factory DanmakuAIFlag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmakuAIFlag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmakuAIFlag', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..pc<DanmakuFlag>(1, _omitFieldNames ? '' : 'dmFlags', $pb.PbFieldType.PM, subBuilder: DanmakuFlag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmakuAIFlag clone() => DanmakuAIFlag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmakuAIFlag copyWith(void Function(DanmakuAIFlag) updates) => super.copyWith((message) => updates(message as DanmakuAIFlag)) as DanmakuAIFlag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmakuAIFlag create() => DanmakuAIFlag._();
  DanmakuAIFlag createEmptyInstance() => create();
  static $pb.PbList<DanmakuAIFlag> createRepeated() => $pb.PbList<DanmakuAIFlag>();
  @$core.pragma('dart2js:noInline')
  static DanmakuAIFlag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmakuAIFlag>(create);
  static DanmakuAIFlag? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DanmakuFlag> get dmFlags => $_getList(0);
}

class DanmakuElem extends $pb.GeneratedMessage {
  factory DanmakuElem({
    $fixnum.Int64? id,
    $core.int? progress,
    $core.int? mode,
    $core.int? fontsize,
    $core.int? color,
    $core.String? midHash,
    $core.String? content,
    $fixnum.Int64? ctime,
    $core.int? weight,
    $core.String? action,
    $core.int? pool,
    $core.String? idStr,
    $core.int? attr,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (progress != null) {
      $result.progress = progress;
    }
    if (mode != null) {
      $result.mode = mode;
    }
    if (fontsize != null) {
      $result.fontsize = fontsize;
    }
    if (color != null) {
      $result.color = color;
    }
    if (midHash != null) {
      $result.midHash = midHash;
    }
    if (content != null) {
      $result.content = content;
    }
    if (ctime != null) {
      $result.ctime = ctime;
    }
    if (weight != null) {
      $result.weight = weight;
    }
    if (action != null) {
      $result.action = action;
    }
    if (pool != null) {
      $result.pool = pool;
    }
    if (idStr != null) {
      $result.idStr = idStr;
    }
    if (attr != null) {
      $result.attr = attr;
    }
    return $result;
  }
  DanmakuElem._() : super();
  factory DanmakuElem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmakuElem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmakuElem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'progress', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'mode', $pb.PbFieldType.O3)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'fontsize', $pb.PbFieldType.O3)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'color', $pb.PbFieldType.OU3)
    ..aOS(6, _omitFieldNames ? '' : 'midHash', protoName: 'midHash')
    ..aOS(7, _omitFieldNames ? '' : 'content')
    ..aInt64(8, _omitFieldNames ? '' : 'ctime')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'weight', $pb.PbFieldType.O3)
    ..aOS(10, _omitFieldNames ? '' : 'action')
    ..a<$core.int>(11, _omitFieldNames ? '' : 'pool', $pb.PbFieldType.O3)
    ..aOS(12, _omitFieldNames ? '' : 'idStr', protoName: 'idStr')
    ..a<$core.int>(13, _omitFieldNames ? '' : 'attr', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmakuElem clone() => DanmakuElem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmakuElem copyWith(void Function(DanmakuElem) updates) => super.copyWith((message) => updates(message as DanmakuElem)) as DanmakuElem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmakuElem create() => DanmakuElem._();
  DanmakuElem createEmptyInstance() => create();
  static $pb.PbList<DanmakuElem> createRepeated() => $pb.PbList<DanmakuElem>();
  @$core.pragma('dart2js:noInline')
  static DanmakuElem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmakuElem>(create);
  static DanmakuElem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get progress => $_getIZ(1);
  @$pb.TagNumber(2)
  set progress($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProgress() => $_has(1);
  @$pb.TagNumber(2)
  void clearProgress() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get mode => $_getIZ(2);
  @$pb.TagNumber(3)
  set mode($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearMode() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get fontsize => $_getIZ(3);
  @$pb.TagNumber(4)
  set fontsize($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFontsize() => $_has(3);
  @$pb.TagNumber(4)
  void clearFontsize() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get color => $_getIZ(4);
  @$pb.TagNumber(5)
  set color($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearColor() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get midHash => $_getSZ(5);
  @$pb.TagNumber(6)
  set midHash($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMidHash() => $_has(5);
  @$pb.TagNumber(6)
  void clearMidHash() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get content => $_getSZ(6);
  @$pb.TagNumber(7)
  set content($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasContent() => $_has(6);
  @$pb.TagNumber(7)
  void clearContent() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get ctime => $_getI64(7);
  @$pb.TagNumber(8)
  set ctime($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCtime() => $_has(7);
  @$pb.TagNumber(8)
  void clearCtime() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get weight => $_getIZ(8);
  @$pb.TagNumber(9)
  set weight($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasWeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearWeight() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get action => $_getSZ(9);
  @$pb.TagNumber(10)
  set action($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasAction() => $_has(9);
  @$pb.TagNumber(10)
  void clearAction() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get pool => $_getIZ(10);
  @$pb.TagNumber(11)
  set pool($core.int v) { $_setSignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPool() => $_has(10);
  @$pb.TagNumber(11)
  void clearPool() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get idStr => $_getSZ(11);
  @$pb.TagNumber(12)
  set idStr($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasIdStr() => $_has(11);
  @$pb.TagNumber(12)
  void clearIdStr() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get attr => $_getIZ(12);
  @$pb.TagNumber(13)
  set attr($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasAttr() => $_has(12);
  @$pb.TagNumber(13)
  void clearAttr() => clearField(13);
}

class DanmakuFlag extends $pb.GeneratedMessage {
  factory DanmakuFlag({
    $fixnum.Int64? dmid,
    $core.int? flag,
  }) {
    final $result = create();
    if (dmid != null) {
      $result.dmid = dmid;
    }
    if (flag != null) {
      $result.flag = flag;
    }
    return $result;
  }
  DanmakuFlag._() : super();
  factory DanmakuFlag.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmakuFlag.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmakuFlag', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'dmid')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'flag', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmakuFlag clone() => DanmakuFlag()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmakuFlag copyWith(void Function(DanmakuFlag) updates) => super.copyWith((message) => updates(message as DanmakuFlag)) as DanmakuFlag;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmakuFlag create() => DanmakuFlag._();
  DanmakuFlag createEmptyInstance() => create();
  static $pb.PbList<DanmakuFlag> createRepeated() => $pb.PbList<DanmakuFlag>();
  @$core.pragma('dart2js:noInline')
  static DanmakuFlag getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmakuFlag>(create);
  static DanmakuFlag? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get dmid => $_getI64(0);
  @$pb.TagNumber(1)
  set dmid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDmid() => $_has(0);
  @$pb.TagNumber(1)
  void clearDmid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get flag => $_getIZ(1);
  @$pb.TagNumber(2)
  set flag($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFlag() => $_has(1);
  @$pb.TagNumber(2)
  void clearFlag() => clearField(2);
}

class DanmakuFlagConfig extends $pb.GeneratedMessage {
  factory DanmakuFlagConfig({
    $core.int? recFlag,
    $core.String? recText,
    $core.int? recSwitch,
  }) {
    final $result = create();
    if (recFlag != null) {
      $result.recFlag = recFlag;
    }
    if (recText != null) {
      $result.recText = recText;
    }
    if (recSwitch != null) {
      $result.recSwitch = recSwitch;
    }
    return $result;
  }
  DanmakuFlagConfig._() : super();
  factory DanmakuFlagConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmakuFlagConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmakuFlagConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'recFlag', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'recText')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'recSwitch', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmakuFlagConfig clone() => DanmakuFlagConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmakuFlagConfig copyWith(void Function(DanmakuFlagConfig) updates) => super.copyWith((message) => updates(message as DanmakuFlagConfig)) as DanmakuFlagConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmakuFlagConfig create() => DanmakuFlagConfig._();
  DanmakuFlagConfig createEmptyInstance() => create();
  static $pb.PbList<DanmakuFlagConfig> createRepeated() => $pb.PbList<DanmakuFlagConfig>();
  @$core.pragma('dart2js:noInline')
  static DanmakuFlagConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmakuFlagConfig>(create);
  static DanmakuFlagConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get recFlag => $_getIZ(0);
  @$pb.TagNumber(1)
  set recFlag($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecFlag() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecFlag() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get recText => $_getSZ(1);
  @$pb.TagNumber(2)
  set recText($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecText() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecText() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get recSwitch => $_getIZ(2);
  @$pb.TagNumber(3)
  set recSwitch($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRecSwitch() => $_has(2);
  @$pb.TagNumber(3)
  void clearRecSwitch() => clearField(3);
}

class DanmuDefaultPlayerConfig extends $pb.GeneratedMessage {
  factory DanmuDefaultPlayerConfig({
    $core.bool? playerDanmakuUseDefaultConfig,
    $core.bool? playerDanmakuAiRecommendedSwitch,
    $core.int? playerDanmakuAiRecommendedLevel,
    $core.bool? playerDanmakuBlocktop,
    $core.bool? playerDanmakuBlockscroll,
    $core.bool? playerDanmakuBlockbottom,
    $core.bool? playerDanmakuBlockcolorful,
    $core.bool? playerDanmakuBlockrepeat,
    $core.bool? playerDanmakuBlockspecial,
    $core.double? playerDanmakuOpacity,
    $core.double? playerDanmakuScalingfactor,
    $core.double? playerDanmakuDomain,
    $core.int? playerDanmakuSpeed,
    $core.bool? inlinePlayerDanmakuSwitch,
    $core.int? playerDanmakuSeniorModeSwitch,
  }) {
    final $result = create();
    if (playerDanmakuUseDefaultConfig != null) {
      $result.playerDanmakuUseDefaultConfig = playerDanmakuUseDefaultConfig;
    }
    if (playerDanmakuAiRecommendedSwitch != null) {
      $result.playerDanmakuAiRecommendedSwitch = playerDanmakuAiRecommendedSwitch;
    }
    if (playerDanmakuAiRecommendedLevel != null) {
      $result.playerDanmakuAiRecommendedLevel = playerDanmakuAiRecommendedLevel;
    }
    if (playerDanmakuBlocktop != null) {
      $result.playerDanmakuBlocktop = playerDanmakuBlocktop;
    }
    if (playerDanmakuBlockscroll != null) {
      $result.playerDanmakuBlockscroll = playerDanmakuBlockscroll;
    }
    if (playerDanmakuBlockbottom != null) {
      $result.playerDanmakuBlockbottom = playerDanmakuBlockbottom;
    }
    if (playerDanmakuBlockcolorful != null) {
      $result.playerDanmakuBlockcolorful = playerDanmakuBlockcolorful;
    }
    if (playerDanmakuBlockrepeat != null) {
      $result.playerDanmakuBlockrepeat = playerDanmakuBlockrepeat;
    }
    if (playerDanmakuBlockspecial != null) {
      $result.playerDanmakuBlockspecial = playerDanmakuBlockspecial;
    }
    if (playerDanmakuOpacity != null) {
      $result.playerDanmakuOpacity = playerDanmakuOpacity;
    }
    if (playerDanmakuScalingfactor != null) {
      $result.playerDanmakuScalingfactor = playerDanmakuScalingfactor;
    }
    if (playerDanmakuDomain != null) {
      $result.playerDanmakuDomain = playerDanmakuDomain;
    }
    if (playerDanmakuSpeed != null) {
      $result.playerDanmakuSpeed = playerDanmakuSpeed;
    }
    if (inlinePlayerDanmakuSwitch != null) {
      $result.inlinePlayerDanmakuSwitch = inlinePlayerDanmakuSwitch;
    }
    if (playerDanmakuSeniorModeSwitch != null) {
      $result.playerDanmakuSeniorModeSwitch = playerDanmakuSeniorModeSwitch;
    }
    return $result;
  }
  DanmuDefaultPlayerConfig._() : super();
  factory DanmuDefaultPlayerConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmuDefaultPlayerConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmuDefaultPlayerConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'playerDanmakuUseDefaultConfig')
    ..aOB(4, _omitFieldNames ? '' : 'playerDanmakuAiRecommendedSwitch')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'playerDanmakuAiRecommendedLevel', $pb.PbFieldType.O3)
    ..aOB(6, _omitFieldNames ? '' : 'playerDanmakuBlocktop')
    ..aOB(7, _omitFieldNames ? '' : 'playerDanmakuBlockscroll')
    ..aOB(8, _omitFieldNames ? '' : 'playerDanmakuBlockbottom')
    ..aOB(9, _omitFieldNames ? '' : 'playerDanmakuBlockcolorful')
    ..aOB(10, _omitFieldNames ? '' : 'playerDanmakuBlockrepeat')
    ..aOB(11, _omitFieldNames ? '' : 'playerDanmakuBlockspecial')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'playerDanmakuOpacity', $pb.PbFieldType.OF)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'playerDanmakuScalingfactor', $pb.PbFieldType.OF)
    ..a<$core.double>(14, _omitFieldNames ? '' : 'playerDanmakuDomain', $pb.PbFieldType.OF)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'playerDanmakuSpeed', $pb.PbFieldType.O3)
    ..aOB(16, _omitFieldNames ? '' : 'inlinePlayerDanmakuSwitch')
    ..a<$core.int>(17, _omitFieldNames ? '' : 'playerDanmakuSeniorModeSwitch', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmuDefaultPlayerConfig clone() => DanmuDefaultPlayerConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmuDefaultPlayerConfig copyWith(void Function(DanmuDefaultPlayerConfig) updates) => super.copyWith((message) => updates(message as DanmuDefaultPlayerConfig)) as DanmuDefaultPlayerConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmuDefaultPlayerConfig create() => DanmuDefaultPlayerConfig._();
  DanmuDefaultPlayerConfig createEmptyInstance() => create();
  static $pb.PbList<DanmuDefaultPlayerConfig> createRepeated() => $pb.PbList<DanmuDefaultPlayerConfig>();
  @$core.pragma('dart2js:noInline')
  static DanmuDefaultPlayerConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmuDefaultPlayerConfig>(create);
  static DanmuDefaultPlayerConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get playerDanmakuUseDefaultConfig => $_getBF(0);
  @$pb.TagNumber(1)
  set playerDanmakuUseDefaultConfig($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerDanmakuUseDefaultConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerDanmakuUseDefaultConfig() => clearField(1);

  @$pb.TagNumber(4)
  $core.bool get playerDanmakuAiRecommendedSwitch => $_getBF(1);
  @$pb.TagNumber(4)
  set playerDanmakuAiRecommendedSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayerDanmakuAiRecommendedSwitch() => $_has(1);
  @$pb.TagNumber(4)
  void clearPlayerDanmakuAiRecommendedSwitch() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get playerDanmakuAiRecommendedLevel => $_getIZ(2);
  @$pb.TagNumber(5)
  set playerDanmakuAiRecommendedLevel($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasPlayerDanmakuAiRecommendedLevel() => $_has(2);
  @$pb.TagNumber(5)
  void clearPlayerDanmakuAiRecommendedLevel() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get playerDanmakuBlocktop => $_getBF(3);
  @$pb.TagNumber(6)
  set playerDanmakuBlocktop($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlayerDanmakuBlocktop() => $_has(3);
  @$pb.TagNumber(6)
  void clearPlayerDanmakuBlocktop() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get playerDanmakuBlockscroll => $_getBF(4);
  @$pb.TagNumber(7)
  set playerDanmakuBlockscroll($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlayerDanmakuBlockscroll() => $_has(4);
  @$pb.TagNumber(7)
  void clearPlayerDanmakuBlockscroll() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get playerDanmakuBlockbottom => $_getBF(5);
  @$pb.TagNumber(8)
  set playerDanmakuBlockbottom($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasPlayerDanmakuBlockbottom() => $_has(5);
  @$pb.TagNumber(8)
  void clearPlayerDanmakuBlockbottom() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get playerDanmakuBlockcolorful => $_getBF(6);
  @$pb.TagNumber(9)
  set playerDanmakuBlockcolorful($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(9)
  $core.bool hasPlayerDanmakuBlockcolorful() => $_has(6);
  @$pb.TagNumber(9)
  void clearPlayerDanmakuBlockcolorful() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get playerDanmakuBlockrepeat => $_getBF(7);
  @$pb.TagNumber(10)
  set playerDanmakuBlockrepeat($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(10)
  $core.bool hasPlayerDanmakuBlockrepeat() => $_has(7);
  @$pb.TagNumber(10)
  void clearPlayerDanmakuBlockrepeat() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get playerDanmakuBlockspecial => $_getBF(8);
  @$pb.TagNumber(11)
  set playerDanmakuBlockspecial($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(11)
  $core.bool hasPlayerDanmakuBlockspecial() => $_has(8);
  @$pb.TagNumber(11)
  void clearPlayerDanmakuBlockspecial() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get playerDanmakuOpacity => $_getN(9);
  @$pb.TagNumber(12)
  set playerDanmakuOpacity($core.double v) { $_setFloat(9, v); }
  @$pb.TagNumber(12)
  $core.bool hasPlayerDanmakuOpacity() => $_has(9);
  @$pb.TagNumber(12)
  void clearPlayerDanmakuOpacity() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get playerDanmakuScalingfactor => $_getN(10);
  @$pb.TagNumber(13)
  set playerDanmakuScalingfactor($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(13)
  $core.bool hasPlayerDanmakuScalingfactor() => $_has(10);
  @$pb.TagNumber(13)
  void clearPlayerDanmakuScalingfactor() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get playerDanmakuDomain => $_getN(11);
  @$pb.TagNumber(14)
  set playerDanmakuDomain($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(14)
  $core.bool hasPlayerDanmakuDomain() => $_has(11);
  @$pb.TagNumber(14)
  void clearPlayerDanmakuDomain() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get playerDanmakuSpeed => $_getIZ(12);
  @$pb.TagNumber(15)
  set playerDanmakuSpeed($core.int v) { $_setSignedInt32(12, v); }
  @$pb.TagNumber(15)
  $core.bool hasPlayerDanmakuSpeed() => $_has(12);
  @$pb.TagNumber(15)
  void clearPlayerDanmakuSpeed() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get inlinePlayerDanmakuSwitch => $_getBF(13);
  @$pb.TagNumber(16)
  set inlinePlayerDanmakuSwitch($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(16)
  $core.bool hasInlinePlayerDanmakuSwitch() => $_has(13);
  @$pb.TagNumber(16)
  void clearInlinePlayerDanmakuSwitch() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get playerDanmakuSeniorModeSwitch => $_getIZ(14);
  @$pb.TagNumber(17)
  set playerDanmakuSeniorModeSwitch($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(17)
  $core.bool hasPlayerDanmakuSeniorModeSwitch() => $_has(14);
  @$pb.TagNumber(17)
  void clearPlayerDanmakuSeniorModeSwitch() => clearField(17);
}

class DanmuPlayerConfig extends $pb.GeneratedMessage {
  factory DanmuPlayerConfig({
    $core.bool? playerDanmakuSwitch,
    $core.bool? playerDanmakuSwitchSave,
    $core.bool? playerDanmakuUseDefaultConfig,
    $core.bool? playerDanmakuAiRecommendedSwitch,
    $core.int? playerDanmakuAiRecommendedLevel,
    $core.bool? playerDanmakuBlocktop,
    $core.bool? playerDanmakuBlockscroll,
    $core.bool? playerDanmakuBlockbottom,
    $core.bool? playerDanmakuBlockcolorful,
    $core.bool? playerDanmakuBlockrepeat,
    $core.bool? playerDanmakuBlockspecial,
    $core.double? playerDanmakuOpacity,
    $core.double? playerDanmakuScalingfactor,
    $core.double? playerDanmakuDomain,
    $core.int? playerDanmakuSpeed,
    $core.bool? playerDanmakuEnableblocklist,
    $core.bool? inlinePlayerDanmakuSwitch,
    $core.int? inlinePlayerDanmakuConfig,
    $core.int? playerDanmakuIosSwitchSave,
    $core.int? playerDanmakuSeniorModeSwitch,
  }) {
    final $result = create();
    if (playerDanmakuSwitch != null) {
      $result.playerDanmakuSwitch = playerDanmakuSwitch;
    }
    if (playerDanmakuSwitchSave != null) {
      $result.playerDanmakuSwitchSave = playerDanmakuSwitchSave;
    }
    if (playerDanmakuUseDefaultConfig != null) {
      $result.playerDanmakuUseDefaultConfig = playerDanmakuUseDefaultConfig;
    }
    if (playerDanmakuAiRecommendedSwitch != null) {
      $result.playerDanmakuAiRecommendedSwitch = playerDanmakuAiRecommendedSwitch;
    }
    if (playerDanmakuAiRecommendedLevel != null) {
      $result.playerDanmakuAiRecommendedLevel = playerDanmakuAiRecommendedLevel;
    }
    if (playerDanmakuBlocktop != null) {
      $result.playerDanmakuBlocktop = playerDanmakuBlocktop;
    }
    if (playerDanmakuBlockscroll != null) {
      $result.playerDanmakuBlockscroll = playerDanmakuBlockscroll;
    }
    if (playerDanmakuBlockbottom != null) {
      $result.playerDanmakuBlockbottom = playerDanmakuBlockbottom;
    }
    if (playerDanmakuBlockcolorful != null) {
      $result.playerDanmakuBlockcolorful = playerDanmakuBlockcolorful;
    }
    if (playerDanmakuBlockrepeat != null) {
      $result.playerDanmakuBlockrepeat = playerDanmakuBlockrepeat;
    }
    if (playerDanmakuBlockspecial != null) {
      $result.playerDanmakuBlockspecial = playerDanmakuBlockspecial;
    }
    if (playerDanmakuOpacity != null) {
      $result.playerDanmakuOpacity = playerDanmakuOpacity;
    }
    if (playerDanmakuScalingfactor != null) {
      $result.playerDanmakuScalingfactor = playerDanmakuScalingfactor;
    }
    if (playerDanmakuDomain != null) {
      $result.playerDanmakuDomain = playerDanmakuDomain;
    }
    if (playerDanmakuSpeed != null) {
      $result.playerDanmakuSpeed = playerDanmakuSpeed;
    }
    if (playerDanmakuEnableblocklist != null) {
      $result.playerDanmakuEnableblocklist = playerDanmakuEnableblocklist;
    }
    if (inlinePlayerDanmakuSwitch != null) {
      $result.inlinePlayerDanmakuSwitch = inlinePlayerDanmakuSwitch;
    }
    if (inlinePlayerDanmakuConfig != null) {
      $result.inlinePlayerDanmakuConfig = inlinePlayerDanmakuConfig;
    }
    if (playerDanmakuIosSwitchSave != null) {
      $result.playerDanmakuIosSwitchSave = playerDanmakuIosSwitchSave;
    }
    if (playerDanmakuSeniorModeSwitch != null) {
      $result.playerDanmakuSeniorModeSwitch = playerDanmakuSeniorModeSwitch;
    }
    return $result;
  }
  DanmuPlayerConfig._() : super();
  factory DanmuPlayerConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmuPlayerConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmuPlayerConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'playerDanmakuSwitch')
    ..aOB(2, _omitFieldNames ? '' : 'playerDanmakuSwitchSave')
    ..aOB(3, _omitFieldNames ? '' : 'playerDanmakuUseDefaultConfig')
    ..aOB(4, _omitFieldNames ? '' : 'playerDanmakuAiRecommendedSwitch')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'playerDanmakuAiRecommendedLevel', $pb.PbFieldType.O3)
    ..aOB(6, _omitFieldNames ? '' : 'playerDanmakuBlocktop')
    ..aOB(7, _omitFieldNames ? '' : 'playerDanmakuBlockscroll')
    ..aOB(8, _omitFieldNames ? '' : 'playerDanmakuBlockbottom')
    ..aOB(9, _omitFieldNames ? '' : 'playerDanmakuBlockcolorful')
    ..aOB(10, _omitFieldNames ? '' : 'playerDanmakuBlockrepeat')
    ..aOB(11, _omitFieldNames ? '' : 'playerDanmakuBlockspecial')
    ..a<$core.double>(12, _omitFieldNames ? '' : 'playerDanmakuOpacity', $pb.PbFieldType.OF)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'playerDanmakuScalingfactor', $pb.PbFieldType.OF)
    ..a<$core.double>(14, _omitFieldNames ? '' : 'playerDanmakuDomain', $pb.PbFieldType.OF)
    ..a<$core.int>(15, _omitFieldNames ? '' : 'playerDanmakuSpeed', $pb.PbFieldType.O3)
    ..aOB(16, _omitFieldNames ? '' : 'playerDanmakuEnableblocklist')
    ..aOB(17, _omitFieldNames ? '' : 'inlinePlayerDanmakuSwitch')
    ..a<$core.int>(18, _omitFieldNames ? '' : 'inlinePlayerDanmakuConfig', $pb.PbFieldType.O3)
    ..a<$core.int>(19, _omitFieldNames ? '' : 'playerDanmakuIosSwitchSave', $pb.PbFieldType.O3)
    ..a<$core.int>(20, _omitFieldNames ? '' : 'playerDanmakuSeniorModeSwitch', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmuPlayerConfig clone() => DanmuPlayerConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmuPlayerConfig copyWith(void Function(DanmuPlayerConfig) updates) => super.copyWith((message) => updates(message as DanmuPlayerConfig)) as DanmuPlayerConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmuPlayerConfig create() => DanmuPlayerConfig._();
  DanmuPlayerConfig createEmptyInstance() => create();
  static $pb.PbList<DanmuPlayerConfig> createRepeated() => $pb.PbList<DanmuPlayerConfig>();
  @$core.pragma('dart2js:noInline')
  static DanmuPlayerConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmuPlayerConfig>(create);
  static DanmuPlayerConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get playerDanmakuSwitch => $_getBF(0);
  @$pb.TagNumber(1)
  set playerDanmakuSwitch($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlayerDanmakuSwitch() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlayerDanmakuSwitch() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get playerDanmakuSwitchSave => $_getBF(1);
  @$pb.TagNumber(2)
  set playerDanmakuSwitchSave($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlayerDanmakuSwitchSave() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlayerDanmakuSwitchSave() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get playerDanmakuUseDefaultConfig => $_getBF(2);
  @$pb.TagNumber(3)
  set playerDanmakuUseDefaultConfig($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPlayerDanmakuUseDefaultConfig() => $_has(2);
  @$pb.TagNumber(3)
  void clearPlayerDanmakuUseDefaultConfig() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get playerDanmakuAiRecommendedSwitch => $_getBF(3);
  @$pb.TagNumber(4)
  set playerDanmakuAiRecommendedSwitch($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPlayerDanmakuAiRecommendedSwitch() => $_has(3);
  @$pb.TagNumber(4)
  void clearPlayerDanmakuAiRecommendedSwitch() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get playerDanmakuAiRecommendedLevel => $_getIZ(4);
  @$pb.TagNumber(5)
  set playerDanmakuAiRecommendedLevel($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPlayerDanmakuAiRecommendedLevel() => $_has(4);
  @$pb.TagNumber(5)
  void clearPlayerDanmakuAiRecommendedLevel() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get playerDanmakuBlocktop => $_getBF(5);
  @$pb.TagNumber(6)
  set playerDanmakuBlocktop($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlayerDanmakuBlocktop() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlayerDanmakuBlocktop() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get playerDanmakuBlockscroll => $_getBF(6);
  @$pb.TagNumber(7)
  set playerDanmakuBlockscroll($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPlayerDanmakuBlockscroll() => $_has(6);
  @$pb.TagNumber(7)
  void clearPlayerDanmakuBlockscroll() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get playerDanmakuBlockbottom => $_getBF(7);
  @$pb.TagNumber(8)
  set playerDanmakuBlockbottom($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPlayerDanmakuBlockbottom() => $_has(7);
  @$pb.TagNumber(8)
  void clearPlayerDanmakuBlockbottom() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get playerDanmakuBlockcolorful => $_getBF(8);
  @$pb.TagNumber(9)
  set playerDanmakuBlockcolorful($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPlayerDanmakuBlockcolorful() => $_has(8);
  @$pb.TagNumber(9)
  void clearPlayerDanmakuBlockcolorful() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get playerDanmakuBlockrepeat => $_getBF(9);
  @$pb.TagNumber(10)
  set playerDanmakuBlockrepeat($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasPlayerDanmakuBlockrepeat() => $_has(9);
  @$pb.TagNumber(10)
  void clearPlayerDanmakuBlockrepeat() => clearField(10);

  @$pb.TagNumber(11)
  $core.bool get playerDanmakuBlockspecial => $_getBF(10);
  @$pb.TagNumber(11)
  set playerDanmakuBlockspecial($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPlayerDanmakuBlockspecial() => $_has(10);
  @$pb.TagNumber(11)
  void clearPlayerDanmakuBlockspecial() => clearField(11);

  @$pb.TagNumber(12)
  $core.double get playerDanmakuOpacity => $_getN(11);
  @$pb.TagNumber(12)
  set playerDanmakuOpacity($core.double v) { $_setFloat(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasPlayerDanmakuOpacity() => $_has(11);
  @$pb.TagNumber(12)
  void clearPlayerDanmakuOpacity() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get playerDanmakuScalingfactor => $_getN(12);
  @$pb.TagNumber(13)
  set playerDanmakuScalingfactor($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasPlayerDanmakuScalingfactor() => $_has(12);
  @$pb.TagNumber(13)
  void clearPlayerDanmakuScalingfactor() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get playerDanmakuDomain => $_getN(13);
  @$pb.TagNumber(14)
  set playerDanmakuDomain($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasPlayerDanmakuDomain() => $_has(13);
  @$pb.TagNumber(14)
  void clearPlayerDanmakuDomain() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get playerDanmakuSpeed => $_getIZ(14);
  @$pb.TagNumber(15)
  set playerDanmakuSpeed($core.int v) { $_setSignedInt32(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPlayerDanmakuSpeed() => $_has(14);
  @$pb.TagNumber(15)
  void clearPlayerDanmakuSpeed() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get playerDanmakuEnableblocklist => $_getBF(15);
  @$pb.TagNumber(16)
  set playerDanmakuEnableblocklist($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasPlayerDanmakuEnableblocklist() => $_has(15);
  @$pb.TagNumber(16)
  void clearPlayerDanmakuEnableblocklist() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get inlinePlayerDanmakuSwitch => $_getBF(16);
  @$pb.TagNumber(17)
  set inlinePlayerDanmakuSwitch($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasInlinePlayerDanmakuSwitch() => $_has(16);
  @$pb.TagNumber(17)
  void clearInlinePlayerDanmakuSwitch() => clearField(17);

  @$pb.TagNumber(18)
  $core.int get inlinePlayerDanmakuConfig => $_getIZ(17);
  @$pb.TagNumber(18)
  set inlinePlayerDanmakuConfig($core.int v) { $_setSignedInt32(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasInlinePlayerDanmakuConfig() => $_has(17);
  @$pb.TagNumber(18)
  void clearInlinePlayerDanmakuConfig() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get playerDanmakuIosSwitchSave => $_getIZ(18);
  @$pb.TagNumber(19)
  set playerDanmakuIosSwitchSave($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasPlayerDanmakuIosSwitchSave() => $_has(18);
  @$pb.TagNumber(19)
  void clearPlayerDanmakuIosSwitchSave() => clearField(19);

  @$pb.TagNumber(20)
  $core.int get playerDanmakuSeniorModeSwitch => $_getIZ(19);
  @$pb.TagNumber(20)
  set playerDanmakuSeniorModeSwitch($core.int v) { $_setSignedInt32(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasPlayerDanmakuSeniorModeSwitch() => $_has(19);
  @$pb.TagNumber(20)
  void clearPlayerDanmakuSeniorModeSwitch() => clearField(20);
}

class DanmuPlayerDynamicConfig extends $pb.GeneratedMessage {
  factory DanmuPlayerDynamicConfig({
    $core.int? progress,
    $core.double? playerDanmakuDomain,
  }) {
    final $result = create();
    if (progress != null) {
      $result.progress = progress;
    }
    if (playerDanmakuDomain != null) {
      $result.playerDanmakuDomain = playerDanmakuDomain;
    }
    return $result;
  }
  DanmuPlayerDynamicConfig._() : super();
  factory DanmuPlayerDynamicConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmuPlayerDynamicConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmuPlayerDynamicConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'progress', $pb.PbFieldType.O3)
    ..a<$core.double>(14, _omitFieldNames ? '' : 'playerDanmakuDomain', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmuPlayerDynamicConfig clone() => DanmuPlayerDynamicConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmuPlayerDynamicConfig copyWith(void Function(DanmuPlayerDynamicConfig) updates) => super.copyWith((message) => updates(message as DanmuPlayerDynamicConfig)) as DanmuPlayerDynamicConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmuPlayerDynamicConfig create() => DanmuPlayerDynamicConfig._();
  DanmuPlayerDynamicConfig createEmptyInstance() => create();
  static $pb.PbList<DanmuPlayerDynamicConfig> createRepeated() => $pb.PbList<DanmuPlayerDynamicConfig>();
  @$core.pragma('dart2js:noInline')
  static DanmuPlayerDynamicConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmuPlayerDynamicConfig>(create);
  static DanmuPlayerDynamicConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get progress => $_getIZ(0);
  @$pb.TagNumber(1)
  set progress($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProgress() => $_has(0);
  @$pb.TagNumber(1)
  void clearProgress() => clearField(1);

  @$pb.TagNumber(14)
  $core.double get playerDanmakuDomain => $_getN(1);
  @$pb.TagNumber(14)
  set playerDanmakuDomain($core.double v) { $_setFloat(1, v); }
  @$pb.TagNumber(14)
  $core.bool hasPlayerDanmakuDomain() => $_has(1);
  @$pb.TagNumber(14)
  void clearPlayerDanmakuDomain() => clearField(14);
}

class DanmuPlayerViewConfig extends $pb.GeneratedMessage {
  factory DanmuPlayerViewConfig({
    DanmuDefaultPlayerConfig? danmukuDefaultPlayerConfig,
    DanmuPlayerConfig? danmukuPlayerConfig,
    $core.Iterable<DanmuPlayerDynamicConfig>? danmukuPlayerDynamicConfig,
  }) {
    final $result = create();
    if (danmukuDefaultPlayerConfig != null) {
      $result.danmukuDefaultPlayerConfig = danmukuDefaultPlayerConfig;
    }
    if (danmukuPlayerConfig != null) {
      $result.danmukuPlayerConfig = danmukuPlayerConfig;
    }
    if (danmukuPlayerDynamicConfig != null) {
      $result.danmukuPlayerDynamicConfig.addAll(danmukuPlayerDynamicConfig);
    }
    return $result;
  }
  DanmuPlayerViewConfig._() : super();
  factory DanmuPlayerViewConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmuPlayerViewConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmuPlayerViewConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOM<DanmuDefaultPlayerConfig>(1, _omitFieldNames ? '' : 'danmukuDefaultPlayerConfig', subBuilder: DanmuDefaultPlayerConfig.create)
    ..aOM<DanmuPlayerConfig>(2, _omitFieldNames ? '' : 'danmukuPlayerConfig', subBuilder: DanmuPlayerConfig.create)
    ..pc<DanmuPlayerDynamicConfig>(3, _omitFieldNames ? '' : 'danmukuPlayerDynamicConfig', $pb.PbFieldType.PM, subBuilder: DanmuPlayerDynamicConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmuPlayerViewConfig clone() => DanmuPlayerViewConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmuPlayerViewConfig copyWith(void Function(DanmuPlayerViewConfig) updates) => super.copyWith((message) => updates(message as DanmuPlayerViewConfig)) as DanmuPlayerViewConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmuPlayerViewConfig create() => DanmuPlayerViewConfig._();
  DanmuPlayerViewConfig createEmptyInstance() => create();
  static $pb.PbList<DanmuPlayerViewConfig> createRepeated() => $pb.PbList<DanmuPlayerViewConfig>();
  @$core.pragma('dart2js:noInline')
  static DanmuPlayerViewConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmuPlayerViewConfig>(create);
  static DanmuPlayerViewConfig? _defaultInstance;

  @$pb.TagNumber(1)
  DanmuDefaultPlayerConfig get danmukuDefaultPlayerConfig => $_getN(0);
  @$pb.TagNumber(1)
  set danmukuDefaultPlayerConfig(DanmuDefaultPlayerConfig v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDanmukuDefaultPlayerConfig() => $_has(0);
  @$pb.TagNumber(1)
  void clearDanmukuDefaultPlayerConfig() => clearField(1);
  @$pb.TagNumber(1)
  DanmuDefaultPlayerConfig ensureDanmukuDefaultPlayerConfig() => $_ensure(0);

  @$pb.TagNumber(2)
  DanmuPlayerConfig get danmukuPlayerConfig => $_getN(1);
  @$pb.TagNumber(2)
  set danmukuPlayerConfig(DanmuPlayerConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDanmukuPlayerConfig() => $_has(1);
  @$pb.TagNumber(2)
  void clearDanmukuPlayerConfig() => clearField(2);
  @$pb.TagNumber(2)
  DanmuPlayerConfig ensureDanmukuPlayerConfig() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.List<DanmuPlayerDynamicConfig> get danmukuPlayerDynamicConfig => $_getList(2);
}

class DanmuWebPlayerConfig extends $pb.GeneratedMessage {
  factory DanmuWebPlayerConfig({
    $core.bool? dmSwitch,
    $core.bool? aiSwitch,
    $core.int? aiLevel,
    $core.bool? blocktop,
    $core.bool? blockscroll,
    $core.bool? blockbottom,
    $core.bool? blockcolor,
    $core.bool? blockspecial,
    $core.bool? preventshade,
    $core.bool? dmask,
    $core.double? opacity,
    $core.int? dmarea,
    $core.double? speedplus,
    $core.double? fontsize,
    $core.bool? screensync,
    $core.bool? speedsync,
    $core.String? fontfamily,
    $core.bool? bold,
    $core.int? fontborder,
    $core.String? drawType,
    $core.int? seniorModeSwitch,
  }) {
    final $result = create();
    if (dmSwitch != null) {
      $result.dmSwitch = dmSwitch;
    }
    if (aiSwitch != null) {
      $result.aiSwitch = aiSwitch;
    }
    if (aiLevel != null) {
      $result.aiLevel = aiLevel;
    }
    if (blocktop != null) {
      $result.blocktop = blocktop;
    }
    if (blockscroll != null) {
      $result.blockscroll = blockscroll;
    }
    if (blockbottom != null) {
      $result.blockbottom = blockbottom;
    }
    if (blockcolor != null) {
      $result.blockcolor = blockcolor;
    }
    if (blockspecial != null) {
      $result.blockspecial = blockspecial;
    }
    if (preventshade != null) {
      $result.preventshade = preventshade;
    }
    if (dmask != null) {
      $result.dmask = dmask;
    }
    if (opacity != null) {
      $result.opacity = opacity;
    }
    if (dmarea != null) {
      $result.dmarea = dmarea;
    }
    if (speedplus != null) {
      $result.speedplus = speedplus;
    }
    if (fontsize != null) {
      $result.fontsize = fontsize;
    }
    if (screensync != null) {
      $result.screensync = screensync;
    }
    if (speedsync != null) {
      $result.speedsync = speedsync;
    }
    if (fontfamily != null) {
      $result.fontfamily = fontfamily;
    }
    if (bold != null) {
      $result.bold = bold;
    }
    if (fontborder != null) {
      $result.fontborder = fontborder;
    }
    if (drawType != null) {
      $result.drawType = drawType;
    }
    if (seniorModeSwitch != null) {
      $result.seniorModeSwitch = seniorModeSwitch;
    }
    return $result;
  }
  DanmuWebPlayerConfig._() : super();
  factory DanmuWebPlayerConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DanmuWebPlayerConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DanmuWebPlayerConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'dmSwitch')
    ..aOB(2, _omitFieldNames ? '' : 'aiSwitch')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'aiLevel', $pb.PbFieldType.O3)
    ..aOB(4, _omitFieldNames ? '' : 'blocktop')
    ..aOB(5, _omitFieldNames ? '' : 'blockscroll')
    ..aOB(6, _omitFieldNames ? '' : 'blockbottom')
    ..aOB(7, _omitFieldNames ? '' : 'blockcolor')
    ..aOB(8, _omitFieldNames ? '' : 'blockspecial')
    ..aOB(9, _omitFieldNames ? '' : 'preventshade')
    ..aOB(10, _omitFieldNames ? '' : 'dmask')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'opacity', $pb.PbFieldType.OF)
    ..a<$core.int>(12, _omitFieldNames ? '' : 'dmarea', $pb.PbFieldType.O3)
    ..a<$core.double>(13, _omitFieldNames ? '' : 'speedplus', $pb.PbFieldType.OF)
    ..a<$core.double>(14, _omitFieldNames ? '' : 'fontsize', $pb.PbFieldType.OF)
    ..aOB(15, _omitFieldNames ? '' : 'screensync')
    ..aOB(16, _omitFieldNames ? '' : 'speedsync')
    ..aOS(17, _omitFieldNames ? '' : 'fontfamily')
    ..aOB(18, _omitFieldNames ? '' : 'bold')
    ..a<$core.int>(19, _omitFieldNames ? '' : 'fontborder', $pb.PbFieldType.O3)
    ..aOS(20, _omitFieldNames ? '' : 'drawType')
    ..a<$core.int>(21, _omitFieldNames ? '' : 'seniorModeSwitch', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DanmuWebPlayerConfig clone() => DanmuWebPlayerConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DanmuWebPlayerConfig copyWith(void Function(DanmuWebPlayerConfig) updates) => super.copyWith((message) => updates(message as DanmuWebPlayerConfig)) as DanmuWebPlayerConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DanmuWebPlayerConfig create() => DanmuWebPlayerConfig._();
  DanmuWebPlayerConfig createEmptyInstance() => create();
  static $pb.PbList<DanmuWebPlayerConfig> createRepeated() => $pb.PbList<DanmuWebPlayerConfig>();
  @$core.pragma('dart2js:noInline')
  static DanmuWebPlayerConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DanmuWebPlayerConfig>(create);
  static DanmuWebPlayerConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get dmSwitch => $_getBF(0);
  @$pb.TagNumber(1)
  set dmSwitch($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDmSwitch() => $_has(0);
  @$pb.TagNumber(1)
  void clearDmSwitch() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get aiSwitch => $_getBF(1);
  @$pb.TagNumber(2)
  set aiSwitch($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAiSwitch() => $_has(1);
  @$pb.TagNumber(2)
  void clearAiSwitch() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get aiLevel => $_getIZ(2);
  @$pb.TagNumber(3)
  set aiLevel($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAiLevel() => $_has(2);
  @$pb.TagNumber(3)
  void clearAiLevel() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get blocktop => $_getBF(3);
  @$pb.TagNumber(4)
  set blocktop($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlocktop() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlocktop() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get blockscroll => $_getBF(4);
  @$pb.TagNumber(5)
  set blockscroll($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockscroll() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlockscroll() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get blockbottom => $_getBF(5);
  @$pb.TagNumber(6)
  set blockbottom($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockbottom() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlockbottom() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get blockcolor => $_getBF(6);
  @$pb.TagNumber(7)
  set blockcolor($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockcolor() => $_has(6);
  @$pb.TagNumber(7)
  void clearBlockcolor() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get blockspecial => $_getBF(7);
  @$pb.TagNumber(8)
  set blockspecial($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBlockspecial() => $_has(7);
  @$pb.TagNumber(8)
  void clearBlockspecial() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get preventshade => $_getBF(8);
  @$pb.TagNumber(9)
  set preventshade($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPreventshade() => $_has(8);
  @$pb.TagNumber(9)
  void clearPreventshade() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get dmask => $_getBF(9);
  @$pb.TagNumber(10)
  set dmask($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDmask() => $_has(9);
  @$pb.TagNumber(10)
  void clearDmask() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get opacity => $_getN(10);
  @$pb.TagNumber(11)
  set opacity($core.double v) { $_setFloat(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasOpacity() => $_has(10);
  @$pb.TagNumber(11)
  void clearOpacity() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get dmarea => $_getIZ(11);
  @$pb.TagNumber(12)
  set dmarea($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasDmarea() => $_has(11);
  @$pb.TagNumber(12)
  void clearDmarea() => clearField(12);

  @$pb.TagNumber(13)
  $core.double get speedplus => $_getN(12);
  @$pb.TagNumber(13)
  set speedplus($core.double v) { $_setFloat(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasSpeedplus() => $_has(12);
  @$pb.TagNumber(13)
  void clearSpeedplus() => clearField(13);

  @$pb.TagNumber(14)
  $core.double get fontsize => $_getN(13);
  @$pb.TagNumber(14)
  set fontsize($core.double v) { $_setFloat(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasFontsize() => $_has(13);
  @$pb.TagNumber(14)
  void clearFontsize() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get screensync => $_getBF(14);
  @$pb.TagNumber(15)
  set screensync($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasScreensync() => $_has(14);
  @$pb.TagNumber(15)
  void clearScreensync() => clearField(15);

  @$pb.TagNumber(16)
  $core.bool get speedsync => $_getBF(15);
  @$pb.TagNumber(16)
  set speedsync($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasSpeedsync() => $_has(15);
  @$pb.TagNumber(16)
  void clearSpeedsync() => clearField(16);

  @$pb.TagNumber(17)
  $core.String get fontfamily => $_getSZ(16);
  @$pb.TagNumber(17)
  set fontfamily($core.String v) { $_setString(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasFontfamily() => $_has(16);
  @$pb.TagNumber(17)
  void clearFontfamily() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get bold => $_getBF(17);
  @$pb.TagNumber(18)
  set bold($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasBold() => $_has(17);
  @$pb.TagNumber(18)
  void clearBold() => clearField(18);

  @$pb.TagNumber(19)
  $core.int get fontborder => $_getIZ(18);
  @$pb.TagNumber(19)
  set fontborder($core.int v) { $_setSignedInt32(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasFontborder() => $_has(18);
  @$pb.TagNumber(19)
  void clearFontborder() => clearField(19);

  @$pb.TagNumber(20)
  $core.String get drawType => $_getSZ(19);
  @$pb.TagNumber(20)
  set drawType($core.String v) { $_setString(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasDrawType() => $_has(19);
  @$pb.TagNumber(20)
  void clearDrawType() => clearField(20);

  @$pb.TagNumber(21)
  $core.int get seniorModeSwitch => $_getIZ(20);
  @$pb.TagNumber(21)
  set seniorModeSwitch($core.int v) { $_setSignedInt32(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasSeniorModeSwitch() => $_has(20);
  @$pb.TagNumber(21)
  void clearSeniorModeSwitch() => clearField(21);
}

class DmExpoReportReq extends $pb.GeneratedMessage {
  factory DmExpoReportReq({
    $core.String? sessionId,
    $fixnum.Int64? oid,
    $core.String? spmid,
  }) {
    final $result = create();
    if (sessionId != null) {
      $result.sessionId = sessionId;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (spmid != null) {
      $result.spmid = spmid;
    }
    return $result;
  }
  DmExpoReportReq._() : super();
  factory DmExpoReportReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmExpoReportReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmExpoReportReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'sessionId')
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..aOS(4, _omitFieldNames ? '' : 'spmid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmExpoReportReq clone() => DmExpoReportReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmExpoReportReq copyWith(void Function(DmExpoReportReq) updates) => super.copyWith((message) => updates(message as DmExpoReportReq)) as DmExpoReportReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmExpoReportReq create() => DmExpoReportReq._();
  DmExpoReportReq createEmptyInstance() => create();
  static $pb.PbList<DmExpoReportReq> createRepeated() => $pb.PbList<DmExpoReportReq>();
  @$core.pragma('dart2js:noInline')
  static DmExpoReportReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmExpoReportReq>(create);
  static DmExpoReportReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sessionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sessionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSessionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSessionId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  @$pb.TagNumber(4)
  $core.String get spmid => $_getSZ(2);
  @$pb.TagNumber(4)
  set spmid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpmid() => $_has(2);
  @$pb.TagNumber(4)
  void clearSpmid() => clearField(4);
}

class DmExpoReportRes extends $pb.GeneratedMessage {
  factory DmExpoReportRes() => create();
  DmExpoReportRes._() : super();
  factory DmExpoReportRes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmExpoReportRes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmExpoReportRes', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmExpoReportRes clone() => DmExpoReportRes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmExpoReportRes copyWith(void Function(DmExpoReportRes) updates) => super.copyWith((message) => updates(message as DmExpoReportRes)) as DmExpoReportRes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmExpoReportRes create() => DmExpoReportRes._();
  DmExpoReportRes createEmptyInstance() => create();
  static $pb.PbList<DmExpoReportRes> createRepeated() => $pb.PbList<DmExpoReportRes>();
  @$core.pragma('dart2js:noInline')
  static DmExpoReportRes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmExpoReportRes>(create);
  static DmExpoReportRes? _defaultInstance;
}

class DmPlayerConfigReq extends $pb.GeneratedMessage {
  factory DmPlayerConfigReq({
    $fixnum.Int64? ts,
    PlayerDanmakuSwitch? switch_2,
    PlayerDanmakuSwitchSave? switchSave,
    PlayerDanmakuUseDefaultConfig? useDefaultConfig,
    PlayerDanmakuAiRecommendedSwitch? aiRecommendedSwitch,
    PlayerDanmakuAiRecommendedLevel? aiRecommendedLevel,
    PlayerDanmakuBlocktop? blocktop,
    PlayerDanmakuBlockscroll? blockscroll,
    PlayerDanmakuBlockbottom? blockbottom,
    PlayerDanmakuBlockcolorful? blockcolorful,
    PlayerDanmakuBlockrepeat? blockrepeat,
    PlayerDanmakuBlockspecial? blockspecial,
    PlayerDanmakuOpacity? opacity,
    PlayerDanmakuScalingfactor? scalingfactor,
    PlayerDanmakuDomain? domain,
    PlayerDanmakuSpeed? speed,
    PlayerDanmakuEnableblocklist? enableblocklist,
    InlinePlayerDanmakuSwitch? inlinePlayerDanmakuSwitch,
    PlayerDanmakuSeniorModeSwitch? seniorModeSwitch,
  }) {
    final $result = create();
    if (ts != null) {
      $result.ts = ts;
    }
    if (switch_2 != null) {
      $result.switch_2 = switch_2;
    }
    if (switchSave != null) {
      $result.switchSave = switchSave;
    }
    if (useDefaultConfig != null) {
      $result.useDefaultConfig = useDefaultConfig;
    }
    if (aiRecommendedSwitch != null) {
      $result.aiRecommendedSwitch = aiRecommendedSwitch;
    }
    if (aiRecommendedLevel != null) {
      $result.aiRecommendedLevel = aiRecommendedLevel;
    }
    if (blocktop != null) {
      $result.blocktop = blocktop;
    }
    if (blockscroll != null) {
      $result.blockscroll = blockscroll;
    }
    if (blockbottom != null) {
      $result.blockbottom = blockbottom;
    }
    if (blockcolorful != null) {
      $result.blockcolorful = blockcolorful;
    }
    if (blockrepeat != null) {
      $result.blockrepeat = blockrepeat;
    }
    if (blockspecial != null) {
      $result.blockspecial = blockspecial;
    }
    if (opacity != null) {
      $result.opacity = opacity;
    }
    if (scalingfactor != null) {
      $result.scalingfactor = scalingfactor;
    }
    if (domain != null) {
      $result.domain = domain;
    }
    if (speed != null) {
      $result.speed = speed;
    }
    if (enableblocklist != null) {
      $result.enableblocklist = enableblocklist;
    }
    if (inlinePlayerDanmakuSwitch != null) {
      $result.inlinePlayerDanmakuSwitch = inlinePlayerDanmakuSwitch;
    }
    if (seniorModeSwitch != null) {
      $result.seniorModeSwitch = seniorModeSwitch;
    }
    return $result;
  }
  DmPlayerConfigReq._() : super();
  factory DmPlayerConfigReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmPlayerConfigReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmPlayerConfigReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'ts')
    ..aOM<PlayerDanmakuSwitch>(2, _omitFieldNames ? '' : 'switch', subBuilder: PlayerDanmakuSwitch.create)
    ..aOM<PlayerDanmakuSwitchSave>(3, _omitFieldNames ? '' : 'switchSave', subBuilder: PlayerDanmakuSwitchSave.create)
    ..aOM<PlayerDanmakuUseDefaultConfig>(4, _omitFieldNames ? '' : 'useDefaultConfig', subBuilder: PlayerDanmakuUseDefaultConfig.create)
    ..aOM<PlayerDanmakuAiRecommendedSwitch>(5, _omitFieldNames ? '' : 'aiRecommendedSwitch', subBuilder: PlayerDanmakuAiRecommendedSwitch.create)
    ..aOM<PlayerDanmakuAiRecommendedLevel>(6, _omitFieldNames ? '' : 'aiRecommendedLevel', subBuilder: PlayerDanmakuAiRecommendedLevel.create)
    ..aOM<PlayerDanmakuBlocktop>(7, _omitFieldNames ? '' : 'blocktop', subBuilder: PlayerDanmakuBlocktop.create)
    ..aOM<PlayerDanmakuBlockscroll>(8, _omitFieldNames ? '' : 'blockscroll', subBuilder: PlayerDanmakuBlockscroll.create)
    ..aOM<PlayerDanmakuBlockbottom>(9, _omitFieldNames ? '' : 'blockbottom', subBuilder: PlayerDanmakuBlockbottom.create)
    ..aOM<PlayerDanmakuBlockcolorful>(10, _omitFieldNames ? '' : 'blockcolorful', subBuilder: PlayerDanmakuBlockcolorful.create)
    ..aOM<PlayerDanmakuBlockrepeat>(11, _omitFieldNames ? '' : 'blockrepeat', subBuilder: PlayerDanmakuBlockrepeat.create)
    ..aOM<PlayerDanmakuBlockspecial>(12, _omitFieldNames ? '' : 'blockspecial', subBuilder: PlayerDanmakuBlockspecial.create)
    ..aOM<PlayerDanmakuOpacity>(13, _omitFieldNames ? '' : 'opacity', subBuilder: PlayerDanmakuOpacity.create)
    ..aOM<PlayerDanmakuScalingfactor>(14, _omitFieldNames ? '' : 'scalingfactor', subBuilder: PlayerDanmakuScalingfactor.create)
    ..aOM<PlayerDanmakuDomain>(15, _omitFieldNames ? '' : 'domain', subBuilder: PlayerDanmakuDomain.create)
    ..aOM<PlayerDanmakuSpeed>(16, _omitFieldNames ? '' : 'speed', subBuilder: PlayerDanmakuSpeed.create)
    ..aOM<PlayerDanmakuEnableblocklist>(17, _omitFieldNames ? '' : 'enableblocklist', subBuilder: PlayerDanmakuEnableblocklist.create)
    ..aOM<InlinePlayerDanmakuSwitch>(18, _omitFieldNames ? '' : 'inlinePlayerDanmakuSwitch', protoName: 'inlinePlayerDanmakuSwitch', subBuilder: InlinePlayerDanmakuSwitch.create)
    ..aOM<PlayerDanmakuSeniorModeSwitch>(19, _omitFieldNames ? '' : 'seniorModeSwitch', subBuilder: PlayerDanmakuSeniorModeSwitch.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmPlayerConfigReq clone() => DmPlayerConfigReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmPlayerConfigReq copyWith(void Function(DmPlayerConfigReq) updates) => super.copyWith((message) => updates(message as DmPlayerConfigReq)) as DmPlayerConfigReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmPlayerConfigReq create() => DmPlayerConfigReq._();
  DmPlayerConfigReq createEmptyInstance() => create();
  static $pb.PbList<DmPlayerConfigReq> createRepeated() => $pb.PbList<DmPlayerConfigReq>();
  @$core.pragma('dart2js:noInline')
  static DmPlayerConfigReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmPlayerConfigReq>(create);
  static DmPlayerConfigReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get ts => $_getI64(0);
  @$pb.TagNumber(1)
  set ts($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTs() => $_has(0);
  @$pb.TagNumber(1)
  void clearTs() => clearField(1);

  @$pb.TagNumber(2)
  PlayerDanmakuSwitch get switch_2 => $_getN(1);
  @$pb.TagNumber(2)
  set switch_2(PlayerDanmakuSwitch v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSwitch_2() => $_has(1);
  @$pb.TagNumber(2)
  void clearSwitch_2() => clearField(2);
  @$pb.TagNumber(2)
  PlayerDanmakuSwitch ensureSwitch_2() => $_ensure(1);

  @$pb.TagNumber(3)
  PlayerDanmakuSwitchSave get switchSave => $_getN(2);
  @$pb.TagNumber(3)
  set switchSave(PlayerDanmakuSwitchSave v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSwitchSave() => $_has(2);
  @$pb.TagNumber(3)
  void clearSwitchSave() => clearField(3);
  @$pb.TagNumber(3)
  PlayerDanmakuSwitchSave ensureSwitchSave() => $_ensure(2);

  @$pb.TagNumber(4)
  PlayerDanmakuUseDefaultConfig get useDefaultConfig => $_getN(3);
  @$pb.TagNumber(4)
  set useDefaultConfig(PlayerDanmakuUseDefaultConfig v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasUseDefaultConfig() => $_has(3);
  @$pb.TagNumber(4)
  void clearUseDefaultConfig() => clearField(4);
  @$pb.TagNumber(4)
  PlayerDanmakuUseDefaultConfig ensureUseDefaultConfig() => $_ensure(3);

  @$pb.TagNumber(5)
  PlayerDanmakuAiRecommendedSwitch get aiRecommendedSwitch => $_getN(4);
  @$pb.TagNumber(5)
  set aiRecommendedSwitch(PlayerDanmakuAiRecommendedSwitch v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAiRecommendedSwitch() => $_has(4);
  @$pb.TagNumber(5)
  void clearAiRecommendedSwitch() => clearField(5);
  @$pb.TagNumber(5)
  PlayerDanmakuAiRecommendedSwitch ensureAiRecommendedSwitch() => $_ensure(4);

  @$pb.TagNumber(6)
  PlayerDanmakuAiRecommendedLevel get aiRecommendedLevel => $_getN(5);
  @$pb.TagNumber(6)
  set aiRecommendedLevel(PlayerDanmakuAiRecommendedLevel v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAiRecommendedLevel() => $_has(5);
  @$pb.TagNumber(6)
  void clearAiRecommendedLevel() => clearField(6);
  @$pb.TagNumber(6)
  PlayerDanmakuAiRecommendedLevel ensureAiRecommendedLevel() => $_ensure(5);

  @$pb.TagNumber(7)
  PlayerDanmakuBlocktop get blocktop => $_getN(6);
  @$pb.TagNumber(7)
  set blocktop(PlayerDanmakuBlocktop v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlocktop() => $_has(6);
  @$pb.TagNumber(7)
  void clearBlocktop() => clearField(7);
  @$pb.TagNumber(7)
  PlayerDanmakuBlocktop ensureBlocktop() => $_ensure(6);

  @$pb.TagNumber(8)
  PlayerDanmakuBlockscroll get blockscroll => $_getN(7);
  @$pb.TagNumber(8)
  set blockscroll(PlayerDanmakuBlockscroll v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasBlockscroll() => $_has(7);
  @$pb.TagNumber(8)
  void clearBlockscroll() => clearField(8);
  @$pb.TagNumber(8)
  PlayerDanmakuBlockscroll ensureBlockscroll() => $_ensure(7);

  @$pb.TagNumber(9)
  PlayerDanmakuBlockbottom get blockbottom => $_getN(8);
  @$pb.TagNumber(9)
  set blockbottom(PlayerDanmakuBlockbottom v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasBlockbottom() => $_has(8);
  @$pb.TagNumber(9)
  void clearBlockbottom() => clearField(9);
  @$pb.TagNumber(9)
  PlayerDanmakuBlockbottom ensureBlockbottom() => $_ensure(8);

  @$pb.TagNumber(10)
  PlayerDanmakuBlockcolorful get blockcolorful => $_getN(9);
  @$pb.TagNumber(10)
  set blockcolorful(PlayerDanmakuBlockcolorful v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasBlockcolorful() => $_has(9);
  @$pb.TagNumber(10)
  void clearBlockcolorful() => clearField(10);
  @$pb.TagNumber(10)
  PlayerDanmakuBlockcolorful ensureBlockcolorful() => $_ensure(9);

  @$pb.TagNumber(11)
  PlayerDanmakuBlockrepeat get blockrepeat => $_getN(10);
  @$pb.TagNumber(11)
  set blockrepeat(PlayerDanmakuBlockrepeat v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasBlockrepeat() => $_has(10);
  @$pb.TagNumber(11)
  void clearBlockrepeat() => clearField(11);
  @$pb.TagNumber(11)
  PlayerDanmakuBlockrepeat ensureBlockrepeat() => $_ensure(10);

  @$pb.TagNumber(12)
  PlayerDanmakuBlockspecial get blockspecial => $_getN(11);
  @$pb.TagNumber(12)
  set blockspecial(PlayerDanmakuBlockspecial v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasBlockspecial() => $_has(11);
  @$pb.TagNumber(12)
  void clearBlockspecial() => clearField(12);
  @$pb.TagNumber(12)
  PlayerDanmakuBlockspecial ensureBlockspecial() => $_ensure(11);

  @$pb.TagNumber(13)
  PlayerDanmakuOpacity get opacity => $_getN(12);
  @$pb.TagNumber(13)
  set opacity(PlayerDanmakuOpacity v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasOpacity() => $_has(12);
  @$pb.TagNumber(13)
  void clearOpacity() => clearField(13);
  @$pb.TagNumber(13)
  PlayerDanmakuOpacity ensureOpacity() => $_ensure(12);

  @$pb.TagNumber(14)
  PlayerDanmakuScalingfactor get scalingfactor => $_getN(13);
  @$pb.TagNumber(14)
  set scalingfactor(PlayerDanmakuScalingfactor v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasScalingfactor() => $_has(13);
  @$pb.TagNumber(14)
  void clearScalingfactor() => clearField(14);
  @$pb.TagNumber(14)
  PlayerDanmakuScalingfactor ensureScalingfactor() => $_ensure(13);

  @$pb.TagNumber(15)
  PlayerDanmakuDomain get domain => $_getN(14);
  @$pb.TagNumber(15)
  set domain(PlayerDanmakuDomain v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasDomain() => $_has(14);
  @$pb.TagNumber(15)
  void clearDomain() => clearField(15);
  @$pb.TagNumber(15)
  PlayerDanmakuDomain ensureDomain() => $_ensure(14);

  @$pb.TagNumber(16)
  PlayerDanmakuSpeed get speed => $_getN(15);
  @$pb.TagNumber(16)
  set speed(PlayerDanmakuSpeed v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasSpeed() => $_has(15);
  @$pb.TagNumber(16)
  void clearSpeed() => clearField(16);
  @$pb.TagNumber(16)
  PlayerDanmakuSpeed ensureSpeed() => $_ensure(15);

  @$pb.TagNumber(17)
  PlayerDanmakuEnableblocklist get enableblocklist => $_getN(16);
  @$pb.TagNumber(17)
  set enableblocklist(PlayerDanmakuEnableblocklist v) { setField(17, v); }
  @$pb.TagNumber(17)
  $core.bool hasEnableblocklist() => $_has(16);
  @$pb.TagNumber(17)
  void clearEnableblocklist() => clearField(17);
  @$pb.TagNumber(17)
  PlayerDanmakuEnableblocklist ensureEnableblocklist() => $_ensure(16);

  @$pb.TagNumber(18)
  InlinePlayerDanmakuSwitch get inlinePlayerDanmakuSwitch => $_getN(17);
  @$pb.TagNumber(18)
  set inlinePlayerDanmakuSwitch(InlinePlayerDanmakuSwitch v) { setField(18, v); }
  @$pb.TagNumber(18)
  $core.bool hasInlinePlayerDanmakuSwitch() => $_has(17);
  @$pb.TagNumber(18)
  void clearInlinePlayerDanmakuSwitch() => clearField(18);
  @$pb.TagNumber(18)
  InlinePlayerDanmakuSwitch ensureInlinePlayerDanmakuSwitch() => $_ensure(17);

  @$pb.TagNumber(19)
  PlayerDanmakuSeniorModeSwitch get seniorModeSwitch => $_getN(18);
  @$pb.TagNumber(19)
  set seniorModeSwitch(PlayerDanmakuSeniorModeSwitch v) { setField(19, v); }
  @$pb.TagNumber(19)
  $core.bool hasSeniorModeSwitch() => $_has(18);
  @$pb.TagNumber(19)
  void clearSeniorModeSwitch() => clearField(19);
  @$pb.TagNumber(19)
  PlayerDanmakuSeniorModeSwitch ensureSeniorModeSwitch() => $_ensure(18);
}

class DmSegConfig extends $pb.GeneratedMessage {
  factory DmSegConfig({
    $fixnum.Int64? pageSize,
    $fixnum.Int64? total,
  }) {
    final $result = create();
    if (pageSize != null) {
      $result.pageSize = pageSize;
    }
    if (total != null) {
      $result.total = total;
    }
    return $result;
  }
  DmSegConfig._() : super();
  factory DmSegConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmSegConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmSegConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pageSize')
    ..aInt64(2, _omitFieldNames ? '' : 'total')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmSegConfig clone() => DmSegConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmSegConfig copyWith(void Function(DmSegConfig) updates) => super.copyWith((message) => updates(message as DmSegConfig)) as DmSegConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegConfig create() => DmSegConfig._();
  DmSegConfig createEmptyInstance() => create();
  static $pb.PbList<DmSegConfig> createRepeated() => $pb.PbList<DmSegConfig>();
  @$core.pragma('dart2js:noInline')
  static DmSegConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmSegConfig>(create);
  static DmSegConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pageSize => $_getI64(0);
  @$pb.TagNumber(1)
  set pageSize($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get total => $_getI64(1);
  @$pb.TagNumber(2)
  set total($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

class DmSegMobileReply extends $pb.GeneratedMessage {
  factory DmSegMobileReply({
    $core.Iterable<DanmakuElem>? elems,
    $core.int? state,
    DanmakuAIFlag? aiFlag,
  }) {
    final $result = create();
    if (elems != null) {
      $result.elems.addAll(elems);
    }
    if (state != null) {
      $result.state = state;
    }
    if (aiFlag != null) {
      $result.aiFlag = aiFlag;
    }
    return $result;
  }
  DmSegMobileReply._() : super();
  factory DmSegMobileReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmSegMobileReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmSegMobileReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..pc<DanmakuElem>(1, _omitFieldNames ? '' : 'elems', $pb.PbFieldType.PM, subBuilder: DanmakuElem.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..aOM<DanmakuAIFlag>(3, _omitFieldNames ? '' : 'aiFlag', subBuilder: DanmakuAIFlag.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmSegMobileReply clone() => DmSegMobileReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmSegMobileReply copyWith(void Function(DmSegMobileReply) updates) => super.copyWith((message) => updates(message as DmSegMobileReply)) as DmSegMobileReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegMobileReply create() => DmSegMobileReply._();
  DmSegMobileReply createEmptyInstance() => create();
  static $pb.PbList<DmSegMobileReply> createRepeated() => $pb.PbList<DmSegMobileReply>();
  @$core.pragma('dart2js:noInline')
  static DmSegMobileReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmSegMobileReply>(create);
  static DmSegMobileReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<DanmakuElem> get elems => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get state => $_getIZ(1);
  @$pb.TagNumber(2)
  set state($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasState() => $_has(1);
  @$pb.TagNumber(2)
  void clearState() => clearField(2);

  @$pb.TagNumber(3)
  DanmakuAIFlag get aiFlag => $_getN(2);
  @$pb.TagNumber(3)
  set aiFlag(DanmakuAIFlag v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAiFlag() => $_has(2);
  @$pb.TagNumber(3)
  void clearAiFlag() => clearField(3);
  @$pb.TagNumber(3)
  DanmakuAIFlag ensureAiFlag() => $_ensure(2);
}

class DmSegMobileReq extends $pb.GeneratedMessage {
  factory DmSegMobileReq({
    $fixnum.Int64? pid,
    $fixnum.Int64? oid,
    $core.int? type,
    $fixnum.Int64? segmentIndex,
    $core.int? teenagersMode,
  }) {
    final $result = create();
    if (pid != null) {
      $result.pid = pid;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (segmentIndex != null) {
      $result.segmentIndex = segmentIndex;
    }
    if (teenagersMode != null) {
      $result.teenagersMode = teenagersMode;
    }
    return $result;
  }
  DmSegMobileReq._() : super();
  factory DmSegMobileReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmSegMobileReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmSegMobileReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pid')
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'segmentIndex')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'teenagersMode', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmSegMobileReq clone() => DmSegMobileReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmSegMobileReq copyWith(void Function(DmSegMobileReq) updates) => super.copyWith((message) => updates(message as DmSegMobileReq)) as DmSegMobileReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegMobileReq create() => DmSegMobileReq._();
  DmSegMobileReq createEmptyInstance() => create();
  static $pb.PbList<DmSegMobileReq> createRepeated() => $pb.PbList<DmSegMobileReq>();
  @$core.pragma('dart2js:noInline')
  static DmSegMobileReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmSegMobileReq>(create);
  static DmSegMobileReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pid => $_getI64(0);
  @$pb.TagNumber(1)
  set pid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get segmentIndex => $_getI64(3);
  @$pb.TagNumber(4)
  set segmentIndex($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSegmentIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSegmentIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get teenagersMode => $_getIZ(4);
  @$pb.TagNumber(5)
  set teenagersMode($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTeenagersMode() => $_has(4);
  @$pb.TagNumber(5)
  void clearTeenagersMode() => clearField(5);
}

class DmSegOttReply extends $pb.GeneratedMessage {
  factory DmSegOttReply({
    $core.bool? closed,
    $core.Iterable<DanmakuElem>? elems,
  }) {
    final $result = create();
    if (closed != null) {
      $result.closed = closed;
    }
    if (elems != null) {
      $result.elems.addAll(elems);
    }
    return $result;
  }
  DmSegOttReply._() : super();
  factory DmSegOttReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmSegOttReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmSegOttReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'closed')
    ..pc<DanmakuElem>(2, _omitFieldNames ? '' : 'elems', $pb.PbFieldType.PM, subBuilder: DanmakuElem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmSegOttReply clone() => DmSegOttReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmSegOttReply copyWith(void Function(DmSegOttReply) updates) => super.copyWith((message) => updates(message as DmSegOttReply)) as DmSegOttReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegOttReply create() => DmSegOttReply._();
  DmSegOttReply createEmptyInstance() => create();
  static $pb.PbList<DmSegOttReply> createRepeated() => $pb.PbList<DmSegOttReply>();
  @$core.pragma('dart2js:noInline')
  static DmSegOttReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmSegOttReply>(create);
  static DmSegOttReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get closed => $_getBF(0);
  @$pb.TagNumber(1)
  set closed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClosed() => $_has(0);
  @$pb.TagNumber(1)
  void clearClosed() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<DanmakuElem> get elems => $_getList(1);
}

class DmSegOttReq extends $pb.GeneratedMessage {
  factory DmSegOttReq({
    $fixnum.Int64? pid,
    $fixnum.Int64? oid,
    $core.int? type,
    $fixnum.Int64? segmentIndex,
  }) {
    final $result = create();
    if (pid != null) {
      $result.pid = pid;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (segmentIndex != null) {
      $result.segmentIndex = segmentIndex;
    }
    return $result;
  }
  DmSegOttReq._() : super();
  factory DmSegOttReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmSegOttReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmSegOttReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pid')
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'segmentIndex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmSegOttReq clone() => DmSegOttReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmSegOttReq copyWith(void Function(DmSegOttReq) updates) => super.copyWith((message) => updates(message as DmSegOttReq)) as DmSegOttReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegOttReq create() => DmSegOttReq._();
  DmSegOttReq createEmptyInstance() => create();
  static $pb.PbList<DmSegOttReq> createRepeated() => $pb.PbList<DmSegOttReq>();
  @$core.pragma('dart2js:noInline')
  static DmSegOttReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmSegOttReq>(create);
  static DmSegOttReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pid => $_getI64(0);
  @$pb.TagNumber(1)
  set pid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get segmentIndex => $_getI64(3);
  @$pb.TagNumber(4)
  set segmentIndex($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSegmentIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSegmentIndex() => clearField(4);
}

class DmSegSDKReply extends $pb.GeneratedMessage {
  factory DmSegSDKReply({
    $core.bool? closed,
    $core.Iterable<DanmakuElem>? elems,
  }) {
    final $result = create();
    if (closed != null) {
      $result.closed = closed;
    }
    if (elems != null) {
      $result.elems.addAll(elems);
    }
    return $result;
  }
  DmSegSDKReply._() : super();
  factory DmSegSDKReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmSegSDKReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmSegSDKReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'closed')
    ..pc<DanmakuElem>(2, _omitFieldNames ? '' : 'elems', $pb.PbFieldType.PM, subBuilder: DanmakuElem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmSegSDKReply clone() => DmSegSDKReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmSegSDKReply copyWith(void Function(DmSegSDKReply) updates) => super.copyWith((message) => updates(message as DmSegSDKReply)) as DmSegSDKReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegSDKReply create() => DmSegSDKReply._();
  DmSegSDKReply createEmptyInstance() => create();
  static $pb.PbList<DmSegSDKReply> createRepeated() => $pb.PbList<DmSegSDKReply>();
  @$core.pragma('dart2js:noInline')
  static DmSegSDKReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmSegSDKReply>(create);
  static DmSegSDKReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get closed => $_getBF(0);
  @$pb.TagNumber(1)
  set closed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClosed() => $_has(0);
  @$pb.TagNumber(1)
  void clearClosed() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<DanmakuElem> get elems => $_getList(1);
}

class DmSegSDKReq extends $pb.GeneratedMessage {
  factory DmSegSDKReq({
    $fixnum.Int64? pid,
    $fixnum.Int64? oid,
    $core.int? type,
    $fixnum.Int64? segmentIndex,
  }) {
    final $result = create();
    if (pid != null) {
      $result.pid = pid;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (segmentIndex != null) {
      $result.segmentIndex = segmentIndex;
    }
    return $result;
  }
  DmSegSDKReq._() : super();
  factory DmSegSDKReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmSegSDKReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmSegSDKReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pid')
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'segmentIndex')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmSegSDKReq clone() => DmSegSDKReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmSegSDKReq copyWith(void Function(DmSegSDKReq) updates) => super.copyWith((message) => updates(message as DmSegSDKReq)) as DmSegSDKReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmSegSDKReq create() => DmSegSDKReq._();
  DmSegSDKReq createEmptyInstance() => create();
  static $pb.PbList<DmSegSDKReq> createRepeated() => $pb.PbList<DmSegSDKReq>();
  @$core.pragma('dart2js:noInline')
  static DmSegSDKReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmSegSDKReq>(create);
  static DmSegSDKReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pid => $_getI64(0);
  @$pb.TagNumber(1)
  set pid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get segmentIndex => $_getI64(3);
  @$pb.TagNumber(4)
  set segmentIndex($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSegmentIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSegmentIndex() => clearField(4);
}

class DmViewReply extends $pb.GeneratedMessage {
  factory DmViewReply({
    $core.bool? closed,
    VideoMask? mask,
    VideoSubtitle? subtitle,
    $core.Iterable<$core.String>? specialDms,
    DanmakuFlagConfig? aiFlag,
    DanmuPlayerViewConfig? playerConfig,
    $core.int? sendBoxStyle,
    $core.bool? allow,
    $core.String? checkBox,
    $core.String? checkBoxShowMsg,
    $core.String? textPlaceholder,
    $core.String? inputPlaceholder,
    $core.Iterable<$core.String>? reportFilterContent,
    ExpoReport? expoReport,
    BuzzwordConfig? buzzwordConfig,
    $core.Iterable<Expressions>? expressions,
  }) {
    final $result = create();
    if (closed != null) {
      $result.closed = closed;
    }
    if (mask != null) {
      $result.mask = mask;
    }
    if (subtitle != null) {
      $result.subtitle = subtitle;
    }
    if (specialDms != null) {
      $result.specialDms.addAll(specialDms);
    }
    if (aiFlag != null) {
      $result.aiFlag = aiFlag;
    }
    if (playerConfig != null) {
      $result.playerConfig = playerConfig;
    }
    if (sendBoxStyle != null) {
      $result.sendBoxStyle = sendBoxStyle;
    }
    if (allow != null) {
      $result.allow = allow;
    }
    if (checkBox != null) {
      $result.checkBox = checkBox;
    }
    if (checkBoxShowMsg != null) {
      $result.checkBoxShowMsg = checkBoxShowMsg;
    }
    if (textPlaceholder != null) {
      $result.textPlaceholder = textPlaceholder;
    }
    if (inputPlaceholder != null) {
      $result.inputPlaceholder = inputPlaceholder;
    }
    if (reportFilterContent != null) {
      $result.reportFilterContent.addAll(reportFilterContent);
    }
    if (expoReport != null) {
      $result.expoReport = expoReport;
    }
    if (buzzwordConfig != null) {
      $result.buzzwordConfig = buzzwordConfig;
    }
    if (expressions != null) {
      $result.expressions.addAll(expressions);
    }
    return $result;
  }
  DmViewReply._() : super();
  factory DmViewReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmViewReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmViewReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'closed')
    ..aOM<VideoMask>(2, _omitFieldNames ? '' : 'mask', subBuilder: VideoMask.create)
    ..aOM<VideoSubtitle>(3, _omitFieldNames ? '' : 'subtitle', subBuilder: VideoSubtitle.create)
    ..pPS(4, _omitFieldNames ? '' : 'specialDms')
    ..aOM<DanmakuFlagConfig>(5, _omitFieldNames ? '' : 'aiFlag', subBuilder: DanmakuFlagConfig.create)
    ..aOM<DanmuPlayerViewConfig>(6, _omitFieldNames ? '' : 'playerConfig', subBuilder: DanmuPlayerViewConfig.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'sendBoxStyle', $pb.PbFieldType.O3)
    ..aOB(8, _omitFieldNames ? '' : 'allow')
    ..aOS(9, _omitFieldNames ? '' : 'checkBox')
    ..aOS(10, _omitFieldNames ? '' : 'checkBoxShowMsg')
    ..aOS(11, _omitFieldNames ? '' : 'textPlaceholder')
    ..aOS(12, _omitFieldNames ? '' : 'inputPlaceholder')
    ..pPS(13, _omitFieldNames ? '' : 'reportFilterContent')
    ..aOM<ExpoReport>(14, _omitFieldNames ? '' : 'expoReport', subBuilder: ExpoReport.create)
    ..aOM<BuzzwordConfig>(15, _omitFieldNames ? '' : 'buzzwordConfig', subBuilder: BuzzwordConfig.create)
    ..pc<Expressions>(16, _omitFieldNames ? '' : 'expressions', $pb.PbFieldType.PM, subBuilder: Expressions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmViewReply clone() => DmViewReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmViewReply copyWith(void Function(DmViewReply) updates) => super.copyWith((message) => updates(message as DmViewReply)) as DmViewReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmViewReply create() => DmViewReply._();
  DmViewReply createEmptyInstance() => create();
  static $pb.PbList<DmViewReply> createRepeated() => $pb.PbList<DmViewReply>();
  @$core.pragma('dart2js:noInline')
  static DmViewReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmViewReply>(create);
  static DmViewReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get closed => $_getBF(0);
  @$pb.TagNumber(1)
  set closed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClosed() => $_has(0);
  @$pb.TagNumber(1)
  void clearClosed() => clearField(1);

  @$pb.TagNumber(2)
  VideoMask get mask => $_getN(1);
  @$pb.TagNumber(2)
  set mask(VideoMask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearMask() => clearField(2);
  @$pb.TagNumber(2)
  VideoMask ensureMask() => $_ensure(1);

  @$pb.TagNumber(3)
  VideoSubtitle get subtitle => $_getN(2);
  @$pb.TagNumber(3)
  set subtitle(VideoSubtitle v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSubtitle() => $_has(2);
  @$pb.TagNumber(3)
  void clearSubtitle() => clearField(3);
  @$pb.TagNumber(3)
  VideoSubtitle ensureSubtitle() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.String> get specialDms => $_getList(3);

  @$pb.TagNumber(5)
  DanmakuFlagConfig get aiFlag => $_getN(4);
  @$pb.TagNumber(5)
  set aiFlag(DanmakuFlagConfig v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAiFlag() => $_has(4);
  @$pb.TagNumber(5)
  void clearAiFlag() => clearField(5);
  @$pb.TagNumber(5)
  DanmakuFlagConfig ensureAiFlag() => $_ensure(4);

  @$pb.TagNumber(6)
  DanmuPlayerViewConfig get playerConfig => $_getN(5);
  @$pb.TagNumber(6)
  set playerConfig(DanmuPlayerViewConfig v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPlayerConfig() => $_has(5);
  @$pb.TagNumber(6)
  void clearPlayerConfig() => clearField(6);
  @$pb.TagNumber(6)
  DanmuPlayerViewConfig ensurePlayerConfig() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.int get sendBoxStyle => $_getIZ(6);
  @$pb.TagNumber(7)
  set sendBoxStyle($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSendBoxStyle() => $_has(6);
  @$pb.TagNumber(7)
  void clearSendBoxStyle() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get allow => $_getBF(7);
  @$pb.TagNumber(8)
  set allow($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasAllow() => $_has(7);
  @$pb.TagNumber(8)
  void clearAllow() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get checkBox => $_getSZ(8);
  @$pb.TagNumber(9)
  set checkBox($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCheckBox() => $_has(8);
  @$pb.TagNumber(9)
  void clearCheckBox() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get checkBoxShowMsg => $_getSZ(9);
  @$pb.TagNumber(10)
  set checkBoxShowMsg($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCheckBoxShowMsg() => $_has(9);
  @$pb.TagNumber(10)
  void clearCheckBoxShowMsg() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get textPlaceholder => $_getSZ(10);
  @$pb.TagNumber(11)
  set textPlaceholder($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTextPlaceholder() => $_has(10);
  @$pb.TagNumber(11)
  void clearTextPlaceholder() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get inputPlaceholder => $_getSZ(11);
  @$pb.TagNumber(12)
  set inputPlaceholder($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasInputPlaceholder() => $_has(11);
  @$pb.TagNumber(12)
  void clearInputPlaceholder() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<$core.String> get reportFilterContent => $_getList(12);

  @$pb.TagNumber(14)
  ExpoReport get expoReport => $_getN(13);
  @$pb.TagNumber(14)
  set expoReport(ExpoReport v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasExpoReport() => $_has(13);
  @$pb.TagNumber(14)
  void clearExpoReport() => clearField(14);
  @$pb.TagNumber(14)
  ExpoReport ensureExpoReport() => $_ensure(13);

  @$pb.TagNumber(15)
  BuzzwordConfig get buzzwordConfig => $_getN(14);
  @$pb.TagNumber(15)
  set buzzwordConfig(BuzzwordConfig v) { setField(15, v); }
  @$pb.TagNumber(15)
  $core.bool hasBuzzwordConfig() => $_has(14);
  @$pb.TagNumber(15)
  void clearBuzzwordConfig() => clearField(15);
  @$pb.TagNumber(15)
  BuzzwordConfig ensureBuzzwordConfig() => $_ensure(14);

  @$pb.TagNumber(16)
  $core.List<Expressions> get expressions => $_getList(15);
}

class DmViewReq extends $pb.GeneratedMessage {
  factory DmViewReq({
    $fixnum.Int64? pid,
    $fixnum.Int64? oid,
    $core.int? type,
    $core.String? spmid,
    $core.int? isHardBoot,
  }) {
    final $result = create();
    if (pid != null) {
      $result.pid = pid;
    }
    if (oid != null) {
      $result.oid = oid;
    }
    if (type != null) {
      $result.type = type;
    }
    if (spmid != null) {
      $result.spmid = spmid;
    }
    if (isHardBoot != null) {
      $result.isHardBoot = isHardBoot;
    }
    return $result;
  }
  DmViewReq._() : super();
  factory DmViewReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmViewReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmViewReq', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'pid')
    ..aInt64(2, _omitFieldNames ? '' : 'oid')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'type', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'spmid')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'isHardBoot', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmViewReq clone() => DmViewReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmViewReq copyWith(void Function(DmViewReq) updates) => super.copyWith((message) => updates(message as DmViewReq)) as DmViewReq;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmViewReq create() => DmViewReq._();
  DmViewReq createEmptyInstance() => create();
  static $pb.PbList<DmViewReq> createRepeated() => $pb.PbList<DmViewReq>();
  @$core.pragma('dart2js:noInline')
  static DmViewReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmViewReq>(create);
  static DmViewReq? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get pid => $_getI64(0);
  @$pb.TagNumber(1)
  set pid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPid() => $_has(0);
  @$pb.TagNumber(1)
  void clearPid() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get oid => $_getI64(1);
  @$pb.TagNumber(2)
  set oid($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOid() => $_has(1);
  @$pb.TagNumber(2)
  void clearOid() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get type => $_getIZ(2);
  @$pb.TagNumber(3)
  set type($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get spmid => $_getSZ(3);
  @$pb.TagNumber(4)
  set spmid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpmid() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpmid() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get isHardBoot => $_getIZ(4);
  @$pb.TagNumber(5)
  set isHardBoot($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsHardBoot() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsHardBoot() => clearField(5);
}

class DmWebViewReply extends $pb.GeneratedMessage {
  factory DmWebViewReply({
    $core.int? state,
    $core.String? text,
    $core.String? textSide,
    DmSegConfig? dmSge,
    DanmakuFlagConfig? flag,
    $core.Iterable<$core.String>? specialDms,
    $core.bool? checkBox,
    $fixnum.Int64? count,
    $core.Iterable<CommandDm>? commandDms,
    DanmuWebPlayerConfig? playerConfig,
    $core.Iterable<$core.String>? reportFilterContent,
    $core.Iterable<Expressions>? expressions,
  }) {
    final $result = create();
    if (state != null) {
      $result.state = state;
    }
    if (text != null) {
      $result.text = text;
    }
    if (textSide != null) {
      $result.textSide = textSide;
    }
    if (dmSge != null) {
      $result.dmSge = dmSge;
    }
    if (flag != null) {
      $result.flag = flag;
    }
    if (specialDms != null) {
      $result.specialDms.addAll(specialDms);
    }
    if (checkBox != null) {
      $result.checkBox = checkBox;
    }
    if (count != null) {
      $result.count = count;
    }
    if (commandDms != null) {
      $result.commandDms.addAll(commandDms);
    }
    if (playerConfig != null) {
      $result.playerConfig = playerConfig;
    }
    if (reportFilterContent != null) {
      $result.reportFilterContent.addAll(reportFilterContent);
    }
    if (expressions != null) {
      $result.expressions.addAll(expressions);
    }
    return $result;
  }
  DmWebViewReply._() : super();
  factory DmWebViewReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DmWebViewReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DmWebViewReply', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'state', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'text')
    ..aOS(3, _omitFieldNames ? '' : 'textSide')
    ..aOM<DmSegConfig>(4, _omitFieldNames ? '' : 'dmSge', subBuilder: DmSegConfig.create)
    ..aOM<DanmakuFlagConfig>(5, _omitFieldNames ? '' : 'flag', subBuilder: DanmakuFlagConfig.create)
    ..pPS(6, _omitFieldNames ? '' : 'specialDms')
    ..aOB(7, _omitFieldNames ? '' : 'checkBox')
    ..aInt64(8, _omitFieldNames ? '' : 'count')
    ..pc<CommandDm>(9, _omitFieldNames ? '' : 'commandDms', $pb.PbFieldType.PM, protoName: 'commandDms', subBuilder: CommandDm.create)
    ..aOM<DanmuWebPlayerConfig>(10, _omitFieldNames ? '' : 'playerConfig', subBuilder: DanmuWebPlayerConfig.create)
    ..pPS(11, _omitFieldNames ? '' : 'reportFilterContent')
    ..pc<Expressions>(12, _omitFieldNames ? '' : 'expressions', $pb.PbFieldType.PM, subBuilder: Expressions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DmWebViewReply clone() => DmWebViewReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DmWebViewReply copyWith(void Function(DmWebViewReply) updates) => super.copyWith((message) => updates(message as DmWebViewReply)) as DmWebViewReply;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DmWebViewReply create() => DmWebViewReply._();
  DmWebViewReply createEmptyInstance() => create();
  static $pb.PbList<DmWebViewReply> createRepeated() => $pb.PbList<DmWebViewReply>();
  @$core.pragma('dart2js:noInline')
  static DmWebViewReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DmWebViewReply>(create);
  static DmWebViewReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get state => $_getIZ(0);
  @$pb.TagNumber(1)
  set state($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get text => $_getSZ(1);
  @$pb.TagNumber(2)
  set text($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasText() => $_has(1);
  @$pb.TagNumber(2)
  void clearText() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get textSide => $_getSZ(2);
  @$pb.TagNumber(3)
  set textSide($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTextSide() => $_has(2);
  @$pb.TagNumber(3)
  void clearTextSide() => clearField(3);

  @$pb.TagNumber(4)
  DmSegConfig get dmSge => $_getN(3);
  @$pb.TagNumber(4)
  set dmSge(DmSegConfig v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDmSge() => $_has(3);
  @$pb.TagNumber(4)
  void clearDmSge() => clearField(4);
  @$pb.TagNumber(4)
  DmSegConfig ensureDmSge() => $_ensure(3);

  @$pb.TagNumber(5)
  DanmakuFlagConfig get flag => $_getN(4);
  @$pb.TagNumber(5)
  set flag(DanmakuFlagConfig v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFlag() => $_has(4);
  @$pb.TagNumber(5)
  void clearFlag() => clearField(5);
  @$pb.TagNumber(5)
  DanmakuFlagConfig ensureFlag() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.String> get specialDms => $_getList(5);

  @$pb.TagNumber(7)
  $core.bool get checkBox => $_getBF(6);
  @$pb.TagNumber(7)
  set checkBox($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCheckBox() => $_has(6);
  @$pb.TagNumber(7)
  void clearCheckBox() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get count => $_getI64(7);
  @$pb.TagNumber(8)
  set count($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearCount() => clearField(8);

  @$pb.TagNumber(9)
  $core.List<CommandDm> get commandDms => $_getList(8);

  @$pb.TagNumber(10)
  DanmuWebPlayerConfig get playerConfig => $_getN(9);
  @$pb.TagNumber(10)
  set playerConfig(DanmuWebPlayerConfig v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasPlayerConfig() => $_has(9);
  @$pb.TagNumber(10)
  void clearPlayerConfig() => clearField(10);
  @$pb.TagNumber(10)
  DanmuWebPlayerConfig ensurePlayerConfig() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.List<$core.String> get reportFilterContent => $_getList(10);

  @$pb.TagNumber(12)
  $core.List<Expressions> get expressions => $_getList(11);
}

class ExpoReport extends $pb.GeneratedMessage {
  factory ExpoReport({
    $core.bool? shouldReportAtEnd,
  }) {
    final $result = create();
    if (shouldReportAtEnd != null) {
      $result.shouldReportAtEnd = shouldReportAtEnd;
    }
    return $result;
  }
  ExpoReport._() : super();
  factory ExpoReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExpoReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExpoReport', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'shouldReportAtEnd')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExpoReport clone() => ExpoReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExpoReport copyWith(void Function(ExpoReport) updates) => super.copyWith((message) => updates(message as ExpoReport)) as ExpoReport;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExpoReport create() => ExpoReport._();
  ExpoReport createEmptyInstance() => create();
  static $pb.PbList<ExpoReport> createRepeated() => $pb.PbList<ExpoReport>();
  @$core.pragma('dart2js:noInline')
  static ExpoReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpoReport>(create);
  static ExpoReport? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get shouldReportAtEnd => $_getBF(0);
  @$pb.TagNumber(1)
  set shouldReportAtEnd($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShouldReportAtEnd() => $_has(0);
  @$pb.TagNumber(1)
  void clearShouldReportAtEnd() => clearField(1);
}

class Expression extends $pb.GeneratedMessage {
  factory Expression({
    $core.Iterable<$core.String>? keyword,
    $core.String? url,
    $core.Iterable<Period>? period,
  }) {
    final $result = create();
    if (keyword != null) {
      $result.keyword.addAll(keyword);
    }
    if (url != null) {
      $result.url = url;
    }
    if (period != null) {
      $result.period.addAll(period);
    }
    return $result;
  }
  Expression._() : super();
  factory Expression.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expression.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expression', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'keyword')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..pc<Period>(3, _omitFieldNames ? '' : 'period', $pb.PbFieldType.PM, subBuilder: Period.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expression clone() => Expression()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expression copyWith(void Function(Expression) updates) => super.copyWith((message) => updates(message as Expression)) as Expression;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expression create() => Expression._();
  Expression createEmptyInstance() => create();
  static $pb.PbList<Expression> createRepeated() => $pb.PbList<Expression>();
  @$core.pragma('dart2js:noInline')
  static Expression getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expression>(create);
  static Expression? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get keyword => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Period> get period => $_getList(2);
}

class Expressions extends $pb.GeneratedMessage {
  factory Expressions({
    $core.Iterable<Expression>? data,
  }) {
    final $result = create();
    if (data != null) {
      $result.data.addAll(data);
    }
    return $result;
  }
  Expressions._() : super();
  factory Expressions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Expressions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Expressions', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..pc<Expression>(1, _omitFieldNames ? '' : 'data', $pb.PbFieldType.PM, subBuilder: Expression.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Expressions clone() => Expressions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Expressions copyWith(void Function(Expressions) updates) => super.copyWith((message) => updates(message as Expressions)) as Expressions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Expressions create() => Expressions._();
  Expressions createEmptyInstance() => create();
  static $pb.PbList<Expressions> createRepeated() => $pb.PbList<Expressions>();
  @$core.pragma('dart2js:noInline')
  static Expressions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Expressions>(create);
  static Expressions? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Expression> get data => $_getList(0);
}

class Period extends $pb.GeneratedMessage {
  factory Period({
    $fixnum.Int64? start,
    $fixnum.Int64? end,
  }) {
    final $result = create();
    if (start != null) {
      $result.start = start;
    }
    if (end != null) {
      $result.end = end;
    }
    return $result;
  }
  Period._() : super();
  factory Period.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Period.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Period', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'start')
    ..aInt64(2, _omitFieldNames ? '' : 'end')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Period clone() => Period()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Period copyWith(void Function(Period) updates) => super.copyWith((message) => updates(message as Period)) as Period;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Period create() => Period._();
  Period createEmptyInstance() => create();
  static $pb.PbList<Period> createRepeated() => $pb.PbList<Period>();
  @$core.pragma('dart2js:noInline')
  static Period getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Period>(create);
  static Period? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get start => $_getI64(0);
  @$pb.TagNumber(1)
  set start($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get end => $_getI64(1);
  @$pb.TagNumber(2)
  set end($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => clearField(2);
}

class InlinePlayerDanmakuSwitch extends $pb.GeneratedMessage {
  factory InlinePlayerDanmakuSwitch({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  InlinePlayerDanmakuSwitch._() : super();
  factory InlinePlayerDanmakuSwitch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InlinePlayerDanmakuSwitch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InlinePlayerDanmakuSwitch', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InlinePlayerDanmakuSwitch clone() => InlinePlayerDanmakuSwitch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InlinePlayerDanmakuSwitch copyWith(void Function(InlinePlayerDanmakuSwitch) updates) => super.copyWith((message) => updates(message as InlinePlayerDanmakuSwitch)) as InlinePlayerDanmakuSwitch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InlinePlayerDanmakuSwitch create() => InlinePlayerDanmakuSwitch._();
  InlinePlayerDanmakuSwitch createEmptyInstance() => create();
  static $pb.PbList<InlinePlayerDanmakuSwitch> createRepeated() => $pb.PbList<InlinePlayerDanmakuSwitch>();
  @$core.pragma('dart2js:noInline')
  static InlinePlayerDanmakuSwitch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InlinePlayerDanmakuSwitch>(create);
  static InlinePlayerDanmakuSwitch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuAiRecommendedLevel extends $pb.GeneratedMessage {
  factory PlayerDanmakuAiRecommendedLevel({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuAiRecommendedLevel._() : super();
  factory PlayerDanmakuAiRecommendedLevel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuAiRecommendedLevel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuAiRecommendedLevel', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuAiRecommendedLevel clone() => PlayerDanmakuAiRecommendedLevel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuAiRecommendedLevel copyWith(void Function(PlayerDanmakuAiRecommendedLevel) updates) => super.copyWith((message) => updates(message as PlayerDanmakuAiRecommendedLevel)) as PlayerDanmakuAiRecommendedLevel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuAiRecommendedLevel create() => PlayerDanmakuAiRecommendedLevel._();
  PlayerDanmakuAiRecommendedLevel createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuAiRecommendedLevel> createRepeated() => $pb.PbList<PlayerDanmakuAiRecommendedLevel>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuAiRecommendedLevel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuAiRecommendedLevel>(create);
  static PlayerDanmakuAiRecommendedLevel? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuAiRecommendedSwitch extends $pb.GeneratedMessage {
  factory PlayerDanmakuAiRecommendedSwitch({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuAiRecommendedSwitch._() : super();
  factory PlayerDanmakuAiRecommendedSwitch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuAiRecommendedSwitch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuAiRecommendedSwitch', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuAiRecommendedSwitch clone() => PlayerDanmakuAiRecommendedSwitch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuAiRecommendedSwitch copyWith(void Function(PlayerDanmakuAiRecommendedSwitch) updates) => super.copyWith((message) => updates(message as PlayerDanmakuAiRecommendedSwitch)) as PlayerDanmakuAiRecommendedSwitch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuAiRecommendedSwitch create() => PlayerDanmakuAiRecommendedSwitch._();
  PlayerDanmakuAiRecommendedSwitch createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuAiRecommendedSwitch> createRepeated() => $pb.PbList<PlayerDanmakuAiRecommendedSwitch>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuAiRecommendedSwitch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuAiRecommendedSwitch>(create);
  static PlayerDanmakuAiRecommendedSwitch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuBlockbottom extends $pb.GeneratedMessage {
  factory PlayerDanmakuBlockbottom({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuBlockbottom._() : super();
  factory PlayerDanmakuBlockbottom.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuBlockbottom.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuBlockbottom', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockbottom clone() => PlayerDanmakuBlockbottom()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockbottom copyWith(void Function(PlayerDanmakuBlockbottom) updates) => super.copyWith((message) => updates(message as PlayerDanmakuBlockbottom)) as PlayerDanmakuBlockbottom;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockbottom create() => PlayerDanmakuBlockbottom._();
  PlayerDanmakuBlockbottom createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuBlockbottom> createRepeated() => $pb.PbList<PlayerDanmakuBlockbottom>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockbottom getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuBlockbottom>(create);
  static PlayerDanmakuBlockbottom? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuBlockcolorful extends $pb.GeneratedMessage {
  factory PlayerDanmakuBlockcolorful({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuBlockcolorful._() : super();
  factory PlayerDanmakuBlockcolorful.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuBlockcolorful.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuBlockcolorful', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockcolorful clone() => PlayerDanmakuBlockcolorful()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockcolorful copyWith(void Function(PlayerDanmakuBlockcolorful) updates) => super.copyWith((message) => updates(message as PlayerDanmakuBlockcolorful)) as PlayerDanmakuBlockcolorful;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockcolorful create() => PlayerDanmakuBlockcolorful._();
  PlayerDanmakuBlockcolorful createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuBlockcolorful> createRepeated() => $pb.PbList<PlayerDanmakuBlockcolorful>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockcolorful getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuBlockcolorful>(create);
  static PlayerDanmakuBlockcolorful? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuBlockrepeat extends $pb.GeneratedMessage {
  factory PlayerDanmakuBlockrepeat({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuBlockrepeat._() : super();
  factory PlayerDanmakuBlockrepeat.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuBlockrepeat.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuBlockrepeat', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockrepeat clone() => PlayerDanmakuBlockrepeat()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockrepeat copyWith(void Function(PlayerDanmakuBlockrepeat) updates) => super.copyWith((message) => updates(message as PlayerDanmakuBlockrepeat)) as PlayerDanmakuBlockrepeat;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockrepeat create() => PlayerDanmakuBlockrepeat._();
  PlayerDanmakuBlockrepeat createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuBlockrepeat> createRepeated() => $pb.PbList<PlayerDanmakuBlockrepeat>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockrepeat getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuBlockrepeat>(create);
  static PlayerDanmakuBlockrepeat? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuBlockscroll extends $pb.GeneratedMessage {
  factory PlayerDanmakuBlockscroll({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuBlockscroll._() : super();
  factory PlayerDanmakuBlockscroll.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuBlockscroll.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuBlockscroll', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockscroll clone() => PlayerDanmakuBlockscroll()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockscroll copyWith(void Function(PlayerDanmakuBlockscroll) updates) => super.copyWith((message) => updates(message as PlayerDanmakuBlockscroll)) as PlayerDanmakuBlockscroll;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockscroll create() => PlayerDanmakuBlockscroll._();
  PlayerDanmakuBlockscroll createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuBlockscroll> createRepeated() => $pb.PbList<PlayerDanmakuBlockscroll>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockscroll getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuBlockscroll>(create);
  static PlayerDanmakuBlockscroll? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuBlockspecial extends $pb.GeneratedMessage {
  factory PlayerDanmakuBlockspecial({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuBlockspecial._() : super();
  factory PlayerDanmakuBlockspecial.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuBlockspecial.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuBlockspecial', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockspecial clone() => PlayerDanmakuBlockspecial()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlockspecial copyWith(void Function(PlayerDanmakuBlockspecial) updates) => super.copyWith((message) => updates(message as PlayerDanmakuBlockspecial)) as PlayerDanmakuBlockspecial;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockspecial create() => PlayerDanmakuBlockspecial._();
  PlayerDanmakuBlockspecial createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuBlockspecial> createRepeated() => $pb.PbList<PlayerDanmakuBlockspecial>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlockspecial getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuBlockspecial>(create);
  static PlayerDanmakuBlockspecial? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuBlocktop extends $pb.GeneratedMessage {
  factory PlayerDanmakuBlocktop({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuBlocktop._() : super();
  factory PlayerDanmakuBlocktop.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuBlocktop.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuBlocktop', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlocktop clone() => PlayerDanmakuBlocktop()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuBlocktop copyWith(void Function(PlayerDanmakuBlocktop) updates) => super.copyWith((message) => updates(message as PlayerDanmakuBlocktop)) as PlayerDanmakuBlocktop;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlocktop create() => PlayerDanmakuBlocktop._();
  PlayerDanmakuBlocktop createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuBlocktop> createRepeated() => $pb.PbList<PlayerDanmakuBlocktop>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuBlocktop getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuBlocktop>(create);
  static PlayerDanmakuBlocktop? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuDomain extends $pb.GeneratedMessage {
  factory PlayerDanmakuDomain({
    $core.double? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuDomain._() : super();
  factory PlayerDanmakuDomain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuDomain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuDomain', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuDomain clone() => PlayerDanmakuDomain()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuDomain copyWith(void Function(PlayerDanmakuDomain) updates) => super.copyWith((message) => updates(message as PlayerDanmakuDomain)) as PlayerDanmakuDomain;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuDomain create() => PlayerDanmakuDomain._();
  PlayerDanmakuDomain createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuDomain> createRepeated() => $pb.PbList<PlayerDanmakuDomain>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuDomain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuDomain>(create);
  static PlayerDanmakuDomain? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuEnableblocklist extends $pb.GeneratedMessage {
  factory PlayerDanmakuEnableblocklist({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuEnableblocklist._() : super();
  factory PlayerDanmakuEnableblocklist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuEnableblocklist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuEnableblocklist', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuEnableblocklist clone() => PlayerDanmakuEnableblocklist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuEnableblocklist copyWith(void Function(PlayerDanmakuEnableblocklist) updates) => super.copyWith((message) => updates(message as PlayerDanmakuEnableblocklist)) as PlayerDanmakuEnableblocklist;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuEnableblocklist create() => PlayerDanmakuEnableblocklist._();
  PlayerDanmakuEnableblocklist createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuEnableblocklist> createRepeated() => $pb.PbList<PlayerDanmakuEnableblocklist>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuEnableblocklist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuEnableblocklist>(create);
  static PlayerDanmakuEnableblocklist? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuOpacity extends $pb.GeneratedMessage {
  factory PlayerDanmakuOpacity({
    $core.double? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuOpacity._() : super();
  factory PlayerDanmakuOpacity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuOpacity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuOpacity', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuOpacity clone() => PlayerDanmakuOpacity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuOpacity copyWith(void Function(PlayerDanmakuOpacity) updates) => super.copyWith((message) => updates(message as PlayerDanmakuOpacity)) as PlayerDanmakuOpacity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuOpacity create() => PlayerDanmakuOpacity._();
  PlayerDanmakuOpacity createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuOpacity> createRepeated() => $pb.PbList<PlayerDanmakuOpacity>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuOpacity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuOpacity>(create);
  static PlayerDanmakuOpacity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuScalingfactor extends $pb.GeneratedMessage {
  factory PlayerDanmakuScalingfactor({
    $core.double? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuScalingfactor._() : super();
  factory PlayerDanmakuScalingfactor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuScalingfactor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuScalingfactor', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.double>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.OF)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuScalingfactor clone() => PlayerDanmakuScalingfactor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuScalingfactor copyWith(void Function(PlayerDanmakuScalingfactor) updates) => super.copyWith((message) => updates(message as PlayerDanmakuScalingfactor)) as PlayerDanmakuScalingfactor;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuScalingfactor create() => PlayerDanmakuScalingfactor._();
  PlayerDanmakuScalingfactor createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuScalingfactor> createRepeated() => $pb.PbList<PlayerDanmakuScalingfactor>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuScalingfactor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuScalingfactor>(create);
  static PlayerDanmakuScalingfactor? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setFloat(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuSeniorModeSwitch extends $pb.GeneratedMessage {
  factory PlayerDanmakuSeniorModeSwitch({
    $core.int? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuSeniorModeSwitch._() : super();
  factory PlayerDanmakuSeniorModeSwitch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuSeniorModeSwitch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuSeniorModeSwitch', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSeniorModeSwitch clone() => PlayerDanmakuSeniorModeSwitch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSeniorModeSwitch copyWith(void Function(PlayerDanmakuSeniorModeSwitch) updates) => super.copyWith((message) => updates(message as PlayerDanmakuSeniorModeSwitch)) as PlayerDanmakuSeniorModeSwitch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSeniorModeSwitch create() => PlayerDanmakuSeniorModeSwitch._();
  PlayerDanmakuSeniorModeSwitch createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuSeniorModeSwitch> createRepeated() => $pb.PbList<PlayerDanmakuSeniorModeSwitch>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSeniorModeSwitch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuSeniorModeSwitch>(create);
  static PlayerDanmakuSeniorModeSwitch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuSpeed extends $pb.GeneratedMessage {
  factory PlayerDanmakuSpeed({
    $core.int? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuSpeed._() : super();
  factory PlayerDanmakuSpeed.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuSpeed.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuSpeed', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSpeed clone() => PlayerDanmakuSpeed()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSpeed copyWith(void Function(PlayerDanmakuSpeed) updates) => super.copyWith((message) => updates(message as PlayerDanmakuSpeed)) as PlayerDanmakuSpeed;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSpeed create() => PlayerDanmakuSpeed._();
  PlayerDanmakuSpeed createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuSpeed> createRepeated() => $pb.PbList<PlayerDanmakuSpeed>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSpeed getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuSpeed>(create);
  static PlayerDanmakuSpeed? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get value => $_getIZ(0);
  @$pb.TagNumber(1)
  set value($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuSwitch extends $pb.GeneratedMessage {
  factory PlayerDanmakuSwitch({
    $core.bool? value,
    $core.bool? canIgnore,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (canIgnore != null) {
      $result.canIgnore = canIgnore;
    }
    return $result;
  }
  PlayerDanmakuSwitch._() : super();
  factory PlayerDanmakuSwitch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuSwitch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuSwitch', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..aOB(2, _omitFieldNames ? '' : 'canIgnore', protoName: 'canIgnore')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSwitch clone() => PlayerDanmakuSwitch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSwitch copyWith(void Function(PlayerDanmakuSwitch) updates) => super.copyWith((message) => updates(message as PlayerDanmakuSwitch)) as PlayerDanmakuSwitch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSwitch create() => PlayerDanmakuSwitch._();
  PlayerDanmakuSwitch createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuSwitch> createRepeated() => $pb.PbList<PlayerDanmakuSwitch>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSwitch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuSwitch>(create);
  static PlayerDanmakuSwitch? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get canIgnore => $_getBF(1);
  @$pb.TagNumber(2)
  set canIgnore($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCanIgnore() => $_has(1);
  @$pb.TagNumber(2)
  void clearCanIgnore() => clearField(2);
}

class PlayerDanmakuSwitchSave extends $pb.GeneratedMessage {
  factory PlayerDanmakuSwitchSave({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuSwitchSave._() : super();
  factory PlayerDanmakuSwitchSave.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuSwitchSave.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuSwitchSave', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSwitchSave clone() => PlayerDanmakuSwitchSave()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuSwitchSave copyWith(void Function(PlayerDanmakuSwitchSave) updates) => super.copyWith((message) => updates(message as PlayerDanmakuSwitchSave)) as PlayerDanmakuSwitchSave;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSwitchSave create() => PlayerDanmakuSwitchSave._();
  PlayerDanmakuSwitchSave createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuSwitchSave> createRepeated() => $pb.PbList<PlayerDanmakuSwitchSave>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuSwitchSave getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuSwitchSave>(create);
  static PlayerDanmakuSwitchSave? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PlayerDanmakuUseDefaultConfig extends $pb.GeneratedMessage {
  factory PlayerDanmakuUseDefaultConfig({
    $core.bool? value,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  PlayerDanmakuUseDefaultConfig._() : super();
  factory PlayerDanmakuUseDefaultConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PlayerDanmakuUseDefaultConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PlayerDanmakuUseDefaultConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'value')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PlayerDanmakuUseDefaultConfig clone() => PlayerDanmakuUseDefaultConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PlayerDanmakuUseDefaultConfig copyWith(void Function(PlayerDanmakuUseDefaultConfig) updates) => super.copyWith((message) => updates(message as PlayerDanmakuUseDefaultConfig)) as PlayerDanmakuUseDefaultConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuUseDefaultConfig create() => PlayerDanmakuUseDefaultConfig._();
  PlayerDanmakuUseDefaultConfig createEmptyInstance() => create();
  static $pb.PbList<PlayerDanmakuUseDefaultConfig> createRepeated() => $pb.PbList<PlayerDanmakuUseDefaultConfig>();
  @$core.pragma('dart2js:noInline')
  static PlayerDanmakuUseDefaultConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PlayerDanmakuUseDefaultConfig>(create);
  static PlayerDanmakuUseDefaultConfig? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get value => $_getBF(0);
  @$pb.TagNumber(1)
  set value($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
}

class PbResponse extends $pb.GeneratedMessage {
  factory PbResponse({
    $core.int? code,
    $core.String? message,
  }) {
    final $result = create();
    if (code != null) {
      $result.code = code;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  PbResponse._() : super();
  factory PbResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PbResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Response', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PbResponse clone() => PbResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PbResponse copyWith(void Function(PbResponse) updates) => super.copyWith((message) => updates(message as PbResponse)) as PbResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PbResponse create() => PbResponse._();
  PbResponse createEmptyInstance() => create();
  static $pb.PbList<PbResponse> createRepeated() => $pb.PbList<PbResponse>();
  @$core.pragma('dart2js:noInline')
  static PbResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PbResponse>(create);
  static PbResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);
  @$pb.TagNumber(1)
  set code($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

class SubtitleItem extends $pb.GeneratedMessage {
  factory SubtitleItem({
    $fixnum.Int64? id,
    $core.String? idStr,
    $core.String? lan,
    $core.String? lanDoc,
    $core.String? subtitleUrl,
    UserInfo? author,
    SubtitleType? type,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (idStr != null) {
      $result.idStr = idStr;
    }
    if (lan != null) {
      $result.lan = lan;
    }
    if (lanDoc != null) {
      $result.lanDoc = lanDoc;
    }
    if (subtitleUrl != null) {
      $result.subtitleUrl = subtitleUrl;
    }
    if (author != null) {
      $result.author = author;
    }
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  SubtitleItem._() : super();
  factory SubtitleItem.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubtitleItem.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubtitleItem', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'idStr')
    ..aOS(3, _omitFieldNames ? '' : 'lan')
    ..aOS(4, _omitFieldNames ? '' : 'lanDoc')
    ..aOS(5, _omitFieldNames ? '' : 'subtitleUrl')
    ..aOM<UserInfo>(6, _omitFieldNames ? '' : 'author', subBuilder: UserInfo.create)
    ..e<SubtitleType>(7, _omitFieldNames ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: SubtitleType.CC, valueOf: SubtitleType.valueOf, enumValues: SubtitleType.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubtitleItem clone() => SubtitleItem()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubtitleItem copyWith(void Function(SubtitleItem) updates) => super.copyWith((message) => updates(message as SubtitleItem)) as SubtitleItem;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubtitleItem create() => SubtitleItem._();
  SubtitleItem createEmptyInstance() => create();
  static $pb.PbList<SubtitleItem> createRepeated() => $pb.PbList<SubtitleItem>();
  @$core.pragma('dart2js:noInline')
  static SubtitleItem getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubtitleItem>(create);
  static SubtitleItem? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get id => $_getI64(0);
  @$pb.TagNumber(1)
  set id($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get idStr => $_getSZ(1);
  @$pb.TagNumber(2)
  set idStr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdStr() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lan => $_getSZ(2);
  @$pb.TagNumber(3)
  set lan($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLan() => $_has(2);
  @$pb.TagNumber(3)
  void clearLan() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get lanDoc => $_getSZ(3);
  @$pb.TagNumber(4)
  set lanDoc($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLanDoc() => $_has(3);
  @$pb.TagNumber(4)
  void clearLanDoc() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get subtitleUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set subtitleUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubtitleUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubtitleUrl() => clearField(5);

  @$pb.TagNumber(6)
  UserInfo get author => $_getN(5);
  @$pb.TagNumber(6)
  set author(UserInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasAuthor() => $_has(5);
  @$pb.TagNumber(6)
  void clearAuthor() => clearField(6);
  @$pb.TagNumber(6)
  UserInfo ensureAuthor() => $_ensure(5);

  @$pb.TagNumber(7)
  SubtitleType get type => $_getN(6);
  @$pb.TagNumber(7)
  set type(SubtitleType v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasType() => $_has(6);
  @$pb.TagNumber(7)
  void clearType() => clearField(7);
}

class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo({
    $fixnum.Int64? mid,
    $core.String? name,
    $core.String? sex,
    $core.String? face,
    $core.String? sign,
    $core.int? rank,
  }) {
    final $result = create();
    if (mid != null) {
      $result.mid = mid;
    }
    if (name != null) {
      $result.name = name;
    }
    if (sex != null) {
      $result.sex = sex;
    }
    if (face != null) {
      $result.face = face;
    }
    if (sign != null) {
      $result.sign = sign;
    }
    if (rank != null) {
      $result.rank = rank;
    }
    return $result;
  }
  UserInfo._() : super();
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'mid')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'sex')
    ..aOS(4, _omitFieldNames ? '' : 'face')
    ..aOS(5, _omitFieldNames ? '' : 'sign')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'rank', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) => super.copyWith((message) => updates(message as UserInfo)) as UserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get mid => $_getI64(0);
  @$pb.TagNumber(1)
  set mid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMid() => $_has(0);
  @$pb.TagNumber(1)
  void clearMid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get sex => $_getSZ(2);
  @$pb.TagNumber(3)
  set sex($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSex() => $_has(2);
  @$pb.TagNumber(3)
  void clearSex() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get face => $_getSZ(3);
  @$pb.TagNumber(4)
  set face($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFace() => $_has(3);
  @$pb.TagNumber(4)
  void clearFace() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sign => $_getSZ(4);
  @$pb.TagNumber(5)
  set sign($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSign() => $_has(4);
  @$pb.TagNumber(5)
  void clearSign() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get rank => $_getIZ(5);
  @$pb.TagNumber(6)
  set rank($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRank() => $_has(5);
  @$pb.TagNumber(6)
  void clearRank() => clearField(6);
}

class VideoMask extends $pb.GeneratedMessage {
  factory VideoMask({
    $fixnum.Int64? cid,
    $core.int? plat,
    $core.int? fps,
    $fixnum.Int64? time,
    $core.String? maskUrl,
  }) {
    final $result = create();
    if (cid != null) {
      $result.cid = cid;
    }
    if (plat != null) {
      $result.plat = plat;
    }
    if (fps != null) {
      $result.fps = fps;
    }
    if (time != null) {
      $result.time = time;
    }
    if (maskUrl != null) {
      $result.maskUrl = maskUrl;
    }
    return $result;
  }
  VideoMask._() : super();
  factory VideoMask.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoMask.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoMask', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'cid')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'plat', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'fps', $pb.PbFieldType.O3)
    ..aInt64(4, _omitFieldNames ? '' : 'time')
    ..aOS(5, _omitFieldNames ? '' : 'maskUrl')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoMask clone() => VideoMask()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoMask copyWith(void Function(VideoMask) updates) => super.copyWith((message) => updates(message as VideoMask)) as VideoMask;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoMask create() => VideoMask._();
  VideoMask createEmptyInstance() => create();
  static $pb.PbList<VideoMask> createRepeated() => $pb.PbList<VideoMask>();
  @$core.pragma('dart2js:noInline')
  static VideoMask getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoMask>(create);
  static VideoMask? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get cid => $_getI64(0);
  @$pb.TagNumber(1)
  set cid($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCid() => $_has(0);
  @$pb.TagNumber(1)
  void clearCid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get plat => $_getIZ(1);
  @$pb.TagNumber(2)
  set plat($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPlat() => $_has(1);
  @$pb.TagNumber(2)
  void clearPlat() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get fps => $_getIZ(2);
  @$pb.TagNumber(3)
  set fps($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFps() => $_has(2);
  @$pb.TagNumber(3)
  void clearFps() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get time => $_getI64(3);
  @$pb.TagNumber(4)
  set time($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get maskUrl => $_getSZ(4);
  @$pb.TagNumber(5)
  set maskUrl($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaskUrl() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaskUrl() => clearField(5);
}

class VideoSubtitle extends $pb.GeneratedMessage {
  factory VideoSubtitle({
    $core.String? lan,
    $core.String? lanDoc,
    $core.Iterable<SubtitleItem>? subtitles,
  }) {
    final $result = create();
    if (lan != null) {
      $result.lan = lan;
    }
    if (lanDoc != null) {
      $result.lanDoc = lanDoc;
    }
    if (subtitles != null) {
      $result.subtitles.addAll(subtitles);
    }
    return $result;
  }
  VideoSubtitle._() : super();
  factory VideoSubtitle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoSubtitle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VideoSubtitle', package: const $pb.PackageName(_omitMessageNames ? '' : 'bilibili.community.service.dm.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'lan')
    ..aOS(2, _omitFieldNames ? '' : 'lanDoc', protoName: 'lanDoc')
    ..pc<SubtitleItem>(3, _omitFieldNames ? '' : 'subtitles', $pb.PbFieldType.PM, subBuilder: SubtitleItem.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoSubtitle clone() => VideoSubtitle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoSubtitle copyWith(void Function(VideoSubtitle) updates) => super.copyWith((message) => updates(message as VideoSubtitle)) as VideoSubtitle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VideoSubtitle create() => VideoSubtitle._();
  VideoSubtitle createEmptyInstance() => create();
  static $pb.PbList<VideoSubtitle> createRepeated() => $pb.PbList<VideoSubtitle>();
  @$core.pragma('dart2js:noInline')
  static VideoSubtitle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoSubtitle>(create);
  static VideoSubtitle? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get lan => $_getSZ(0);
  @$pb.TagNumber(1)
  set lan($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLan() => $_has(0);
  @$pb.TagNumber(1)
  void clearLan() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lanDoc => $_getSZ(1);
  @$pb.TagNumber(2)
  set lanDoc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLanDoc() => $_has(1);
  @$pb.TagNumber(2)
  void clearLanDoc() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<SubtitleItem> get subtitles => $_getList(2);
}

class DMApi {
  $pb.RpcClient _client;
  DMApi(this._client);

  $async.Future<DmSegMobileReply> dmSegMobile($pb.ClientContext? ctx, DmSegMobileReq request) =>
    _client.invoke<DmSegMobileReply>(ctx, 'DM', 'DmSegMobile', request, DmSegMobileReply())
  ;
  $async.Future<DmViewReply> dmView($pb.ClientContext? ctx, DmViewReq request) =>
    _client.invoke<DmViewReply>(ctx, 'DM', 'DmView', request, DmViewReply())
  ;
  $async.Future<PbResponse> dmPlayerConfig($pb.ClientContext? ctx, DmPlayerConfigReq request) =>
    _client.invoke<PbResponse>(ctx, 'DM', 'DmPlayerConfig', request, PbResponse())
  ;
  $async.Future<DmSegOttReply> dmSegOtt($pb.ClientContext? ctx, DmSegOttReq request) =>
    _client.invoke<DmSegOttReply>(ctx, 'DM', 'DmSegOtt', request, DmSegOttReply())
  ;
  $async.Future<DmSegSDKReply> dmSegSDK($pb.ClientContext? ctx, DmSegSDKReq request) =>
    _client.invoke<DmSegSDKReply>(ctx, 'DM', 'DmSegSDK', request, DmSegSDKReply())
  ;
  $async.Future<DmExpoReportRes> dmExpoReport($pb.ClientContext? ctx, DmExpoReportReq request) =>
    _client.invoke<DmExpoReportRes>(ctx, 'DM', 'DmExpoReport', request, DmExpoReportRes())
  ;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
