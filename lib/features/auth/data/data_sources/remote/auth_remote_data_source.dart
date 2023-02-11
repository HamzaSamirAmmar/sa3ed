import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/user_model.dart';

abstract class AuthRemoteDataSource extends BaseRemoteDataSource {
  Future<UserModel> sendAuthData({
    required String name,
    required String password,
    required bool isLogin,
  });
}
