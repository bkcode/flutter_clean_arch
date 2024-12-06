import '../entities/user.dart';
import '../repository/user_repository.dart';

class UserCase {
  final UserRepository _userRepository;

  UserCase(this._userRepository);

  Future<User> getUserinfo(String name) async {
    return await _userRepository.getUserInfo(name);
  }
}
