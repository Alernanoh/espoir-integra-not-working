import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:platform_device_id/platform_device_id.dart';

class DeviceInfoState {
  final String deviceId;
  final Map<String, dynamic> deviceInfo;

  DeviceInfoState({
    this.deviceId = '',
    this.deviceInfo = const {},
  });

  DeviceInfoState copyWith({
    String? deviceId,
    Map<String, dynamic>? deviceInfo,
  }) =>
      DeviceInfoState(
        deviceId: deviceId ?? this.deviceId,
        deviceInfo: deviceInfo ?? this.deviceInfo,
      );
}

class DeviceInfoNotifier extends StateNotifier<DeviceInfoState> {
  bool isLoading = false;
  DeviceInfoNotifier() : super(DeviceInfoState());

  getDeviceInfo() async {
    final DeviceInfoPlugin deviceInfoPlus = DeviceInfoPlugin();
    try {
      isLoading = true;
      if (Platform.isAndroid) {
        state = state.copyWith(
          deviceId: await PlatformDeviceId.getDeviceId ?? '',
          deviceInfo: _readAndroidBuildData(await deviceInfoPlus.androidInfo),
        );
      } else if (Platform.isIOS) {
        state = state.copyWith(
          deviceId: await PlatformDeviceId.getDeviceId ?? '',
          deviceInfo: _readIosDeviceInfo(await deviceInfoPlus.iosInfo),
        );
      }
      isLoading = false;
    } on PlatformException {
      //TODO: Mostrar error en pantalla
    }
  }

  Map<String, dynamic> _readAndroidBuildData(AndroidDeviceInfo build) {
    return <String, dynamic>{
      'version.securityPatch': build.version.securityPatch,
      'version.sdkInt': build.version.sdkInt,
      'version.release': build.version.release,
      'version.previewSdkInt': build.version.previewSdkInt,
      'version.incremental': build.version.incremental,
      'version.codename': build.version.codename,
      'version.baseOS': build.version.baseOS,
      'board': build.board,
      'bootloader': build.bootloader,
      'brand': build.brand,
      'device': build.device,
      'display': build.display,
      'fingerprint': build.fingerprint,
      'hardware': build.hardware,
      'host': build.host,
      'id': build.id,
      'manufacturer': build.manufacturer,
      'model': build.model,
      'product': build.product,
      'supported32BitAbis': build.supported32BitAbis,
      'supported64BitAbis': build.supported64BitAbis,
      'supportedAbis': build.supportedAbis,
      'tags': build.tags,
      'type': build.type,
      'isPhysicalDevice': build.isPhysicalDevice,
      'systemFeatures': build.systemFeatures,
      'displaySizeInches': ((build.displayMetrics.sizeInches * 10).roundToDouble() / 10),
      'displayWidthPixels': build.displayMetrics.widthPx,
      'displayWidthInches': build.displayMetrics.widthInches,
      'displayHeightPixels': build.displayMetrics.heightPx,
      'displayHeightInches': build.displayMetrics.heightInches,
      'displayXDpi': build.displayMetrics.xDpi,
      'displayYDpi': build.displayMetrics.yDpi,
      'serialNumber': build.serialNumber,
    };
  }

  Map<String, dynamic> _readIosDeviceInfo(IosDeviceInfo data) {
    return <String, dynamic>{
      'name': data.name,
      'systemName': data.systemName,
      'systemVersion': data.systemVersion,
      'model': data.model,
      'localizedModel': data.localizedModel,
      'identifierForVendor': data.identifierForVendor,
      'isPhysicalDevice': data.isPhysicalDevice,
      'utsname.sysname:': data.utsname.sysname,
      'utsname.nodename:': data.utsname.nodename,
      'utsname.release:': data.utsname.release,
      'utsname.version:': data.utsname.version,
      'utsname.machine:': data.utsname.machine,
    };
  }
}

final deviceInfoProvider = StateNotifierProvider<DeviceInfoNotifier, DeviceInfoState>((ref) => DeviceInfoNotifier());
