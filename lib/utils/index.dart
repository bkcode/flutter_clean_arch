import 'dart:async';

export 'tool/log_util.dart' show LogUtil;
export 'tool/sp_util.dart' show SpUtil;

/// Anti-shake function
Function(T) debounce<T>(void Function(T) fn, [int t = 300]) {
  Timer? debounceTimer;
  return (T data) {
    if (debounceTimer?.isActive ?? false) debounceTimer?.cancel();

    debounceTimer = Timer(Duration(milliseconds: t), () {
      fn(data);
    });
  };
}

/// version compare, return true when version1 is greater than version2
int compareVersion(String version1, String version2) {
  List<int> parseVersion(String version) {
    return version.split('.').map(int.parse).toList();
  }

  List<int> v1 = parseVersion(version1);
  List<int> v2 = parseVersion(version2);

  int length = v1.length > v2.length ? v1.length : v2.length;

  // fill in the missing version number
  while (v1.length < length) {
    v1.add(0);
  }
  while (v2.length < length) {
    v2.add(0);
  }

  // compare version number
  for (int i = 0; i < length; i++) {
    if (v1[i] > v2[i]) return 1;
    if (v1[i] < v2[i]) return -1;
  }

  return 0;
}
