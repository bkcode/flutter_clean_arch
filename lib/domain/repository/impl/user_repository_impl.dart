import 'package:flutter_clean_arch/data/source/network/api.dart';
import 'package:flutter_clean_arch/domain/repository/user_repository.dart';

import '../../entities/user.dart';

class UserRepositoryImpl implements UserRepository {
  final Api _api;

  UserRepositoryImpl({required Api api}) : _api = api;

  @override
  Future<User> getUserInfo(String name) async {
    final response = await _api.getUserInfo(name);

    return User(
      id: response.id ?? 0,
      name: response.name ?? '',
      email: response.email ?? '',
      avatar: response.avatarUrl ?? '',
    );
  }
}
