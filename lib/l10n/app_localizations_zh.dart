// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get languageTip => '当前语言';

  @override
  String get language => '简体中文';

  @override
  String get title => 'flutter 整洁架构';

  @override
  String get helloWorld => '你好世界！';

  @override
  String get themeTip => '当前主题';

  @override
  String get darkMode => '黑暗模式';

  @override
  String get lightMode => '光明模式';

  @override
  String get autoMode => '跟随系统';

  @override
  String get goAuthorizedPage => '前往需授权页面';

  @override
  String get authorizedPageTitle => '授权页面';

  @override
  String get login => '登录';

  @override
  String get logout => '登出';

  @override
  String variable(String variable) {
    return '多语言渲染传入变量：$variable';
  }

  @override
  String get applesTip => '多语言的复数形式处理';

  @override
  String apples(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count个苹果',
    );
    return '$_temp0';
  }

  @override
  String get genderTip => '多语言中根据用户的性别向其致意。';

  @override
  String gender(String gender, Object name) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': '你好，$name 先生',
        'female': '你好，$name 女士',
        'other': '你好, $name',
      },
    );
    return '$_temp0';
  }

  @override
  String today(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return '今天是$dateString';
  }

  @override
  String numberOfDataPoints(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactCurrency(
      locale: localeName,
      decimalDigits: 2
    );
    final String valueString = valueNumberFormat.format(value);

    return '数字格式化: $valueString';
  }
}
