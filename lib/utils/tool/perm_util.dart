import 'dart:io';

import 'package:flutter_clean_arch/utils/tool/device_info_util.dart';
import 'package:permission_handler/permission_handler.dart';

/// 权限工具类
class PermUtil {
  /// 基础权限申请
  static Future<void> initPermissions() async {
    if (await Permission.contacts.request().isGranted) {
      return;
    }

    await [
      Permission.storage,
      Permission.camera,
    ].request();
  }

  /// 存储权限申请
  static Future<bool> storagePerm() async {
    var androidInfoSdkVersion = await getAndroidInfoSdkVersion();

    // 安卓高版本兼容
    if (Platform.isAndroid && androidInfoSdkVersion > 29) {
      var status = await Permission.manageExternalStorage.status;
      if (status != PermissionStatus.granted) {
        final statuses = await [Permission.manageExternalStorage].request();
        return statuses[Permission.manageExternalStorage] ==
            PermissionStatus.granted;
      }
    } else {
      var status = await Permission.storage.status;
      if (status != PermissionStatus.granted) {
        final statuses = await [Permission.storage].request();
        return statuses[Permission.storage] == PermissionStatus.granted;
      }
    }
    return true;
  }

  /// 相册权限申请
  static Future<bool> cameraPerm() async {
    var status = await Permission.camera.status;
    if (status != PermissionStatus.granted) {
      final statuses = await [Permission.camera].request(); // 请求权限
      return statuses[Permission.camera] == PermissionStatus.granted;
    }
    return true;
  }
}
