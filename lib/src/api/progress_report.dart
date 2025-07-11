// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.10.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'progress_report.freezed.dart';

// These types are ignored because they are neither used by any `pub` functions nor (for structs and enums) marked `#[frb(unignore)]`: `PROGRESS_REPORT_STREAM_SINK`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `deref`, `initialize`

Future<void> addProgressReport({required Report report}) => RustLib.instance.api
    .crateApiProgressReportAddProgressReport(report: report);

@freezed
sealed class Report with _$Report {
  const Report._();

  const factory Report.tableGeneration({
    required double progress,
    required String step,
    String? message,
  }) = Report_TableGeneration;
  const factory Report.misc({
    String? message,
  }) = Report_Misc;
}
