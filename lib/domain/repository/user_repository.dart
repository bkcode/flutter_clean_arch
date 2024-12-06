
import '../entities/user.dart';

abstract class UserRepository {
  Future<User> getUserInfo(String name);
}
