part of 'index.dart';

@riverpod
class ApiNotifier extends _$ApiNotifier {
  @override
  Api build() => ApiImpl();
}
