// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.10.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These types are ignored because they are neither used by any `pub` functions nor (for structs and enums) marked `#[frb(unignore)]`: `IntegratedAddress`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `fmt`
// These functions have error during generation (see debug logs or enable `stop_on_error: true` for more details): `from_xelis`

bool isAddressValid({required String strAddress}) =>
    RustLib.instance.api.crateApiUtilsIsAddressValid(strAddress: strAddress);

String splitIntegratedAddressJson({required String integratedAddress}) =>
    RustLib.instance.api.crateApiUtilsSplitIntegratedAddressJson(
        integratedAddress: integratedAddress);

Future<String> formatCoin({required BigInt value, required int decimals}) =>
    RustLib.instance.api
        .crateApiUtilsFormatCoin(value: value, decimals: decimals);

Future<String> formatXelis({required BigInt value}) =>
    RustLib.instance.api.crateApiUtilsFormatXelis(value: value);
