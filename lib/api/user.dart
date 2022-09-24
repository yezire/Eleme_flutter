import 'package:flutter_auth/api/user_api.dart';

import '../utils/http.dart';


/// 用户
class UserAPI {
  /// 登录
  static Future<UserResponseEntity> login({required UserRequestEntity params}) async {
    var response = await HttpUtil().post('/User', params: params);
    return UserResponseEntity.fromJson(response);
  }
}
