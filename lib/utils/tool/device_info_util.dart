import 'package:device_info_plus/device_info_plus.dart';

Future<int> getAndroidInfoSdkVersion() async {
  var deviceInfo = DeviceInfoPlugin();
  var androidInfo = await deviceInfo.androidInfo;
  int sdkInt = androidInfo.version.sdkInt;
  return sdkInt;
}
