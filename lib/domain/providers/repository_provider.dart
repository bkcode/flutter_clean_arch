part of 'index.dart';

@riverpod
class UserRepositoryNotifier extends _$UserRepositoryNotifier {
  @override
  UserRepository build() {
    return UserRepositoryImpl(api: ref.read(apiNotifierProvider));
  }
}
