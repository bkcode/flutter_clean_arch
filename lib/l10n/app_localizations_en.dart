// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get languageTip => 'Current Language';

  @override
  String get language => 'English';

  @override
  String get title => 'Flutter Clean Arch';

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get themeTip => 'Current Theme';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get lightMode => 'Light Mode';

  @override
  String get autoMode => 'Auto Mode';

  @override
  String get goAuthorizedPage => 'Go to Authorized Page';

  @override
  String get authorizedPageTitle => 'Authorized Page';

  @override
  String get login => 'Login';

  @override
  String get logout => 'Logout';

  @override
  String variable(String variable) {
    return 'Variable passed to the multi-language rendering: $variable';
  }

  @override
  String get applesTip => 'Plural form processing of multi-language';

  @override
  String apples(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apples',
      one: 'One apple',
      zero: 'No apples',
    );
    return '$_temp0';
  }

  @override
  String get genderTip => 'Greet users based on their gender in multiple languages.';

  @override
  String gender(String gender, Object name) {
    String _temp0 = intl.Intl.selectLogic(
      gender,
      {
        'male': 'Hello, Mr. $name',
        'female': 'Hello, Ms. $name',
        'other': 'Hello, $name',
      },
    );
    return '$_temp0';
  }

  @override
  String today(DateTime date) {
    final intl.DateFormat dateDateFormat = intl.DateFormat.yMMMd(localeName);
    final String dateString = dateDateFormat.format(date);

    return 'Today is $dateString';
  }

  @override
  String numberOfDataPoints(int value) {
    final intl.NumberFormat valueNumberFormat = intl.NumberFormat.compactCurrency(
      locale: localeName,
      decimalDigits: 2
    );
    final String valueString = valueNumberFormat.format(value);

    return 'Number of data points: $valueString';
  }
}
