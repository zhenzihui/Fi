//
//  Generated code. Do not modify.
//  source: dm_define.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'dm_define.pb.dart' as $0;
import 'dm_define.pbjson.dart';

export 'dm_define.pb.dart';

abstract class DMServiceBase extends $pb.GeneratedService {
  $async.Future<$0.DmSegMobileReply> dmSegMobile($pb.ServerContext ctx, $0.DmSegMobileReq request);
  $async.Future<$0.DmViewReply> dmView($pb.ServerContext ctx, $0.DmViewReq request);
  $async.Future<$0.PbResponse> dmPlayerConfig($pb.ServerContext ctx, $0.DmPlayerConfigReq request);
  $async.Future<$0.DmSegOttReply> dmSegOtt($pb.ServerContext ctx, $0.DmSegOttReq request);
  $async.Future<$0.DmSegSDKReply> dmSegSDK($pb.ServerContext ctx, $0.DmSegSDKReq request);
  $async.Future<$0.DmExpoReportRes> dmExpoReport($pb.ServerContext ctx, $0.DmExpoReportReq request);

  $pb.GeneratedMessage createRequest($core.String methodName) {
    switch (methodName) {
      case 'DmSegMobile': return $0.DmSegMobileReq();
      case 'DmView': return $0.DmViewReq();
      case 'DmPlayerConfig': return $0.DmPlayerConfigReq();
      case 'DmSegOtt': return $0.DmSegOttReq();
      case 'DmSegSDK': return $0.DmSegSDKReq();
      case 'DmExpoReport': return $0.DmExpoReportReq();
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $async.Future<$pb.GeneratedMessage> handleCall($pb.ServerContext ctx, $core.String methodName, $pb.GeneratedMessage request) {
    switch (methodName) {
      case 'DmSegMobile': return this.dmSegMobile(ctx, request as $0.DmSegMobileReq);
      case 'DmView': return this.dmView(ctx, request as $0.DmViewReq);
      case 'DmPlayerConfig': return this.dmPlayerConfig(ctx, request as $0.DmPlayerConfigReq);
      case 'DmSegOtt': return this.dmSegOtt(ctx, request as $0.DmSegOttReq);
      case 'DmSegSDK': return this.dmSegSDK(ctx, request as $0.DmSegSDKReq);
      case 'DmExpoReport': return this.dmExpoReport(ctx, request as $0.DmExpoReportReq);
      default: throw $core.ArgumentError('Unknown method: $methodName');
    }
  }

  $core.Map<$core.String, $core.dynamic> get $json => DMServiceBase$json;
  $core.Map<$core.String, $core.Map<$core.String, $core.dynamic>> get $messageJson => DMServiceBase$messageJson;
}

