import 'package:flutter_clean_arch/data/models/user_info_dto.dart';
import 'package:flutter_clean_arch/utils/dio/request.dart';

abstract class Api {
  Future<UserInfoDto> getUserInfo(String name);
}

class ApiImpl implements Api {
  @override
  Future<UserInfoDto> getUserInfo(String name) async {
    final userinfo = await Request.get("/users/$name");
    return UserInfoDto.fromJson(userinfo);
  }
}
