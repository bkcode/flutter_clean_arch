part of 'index.dart';

@riverpod
class UserUseCaseNotifier extends _$UserUseCaseNotifier {
  @override
  UserCase build() {
    return UserCase(ref.read(userRepositoryNotifierProvider));
  }
}
