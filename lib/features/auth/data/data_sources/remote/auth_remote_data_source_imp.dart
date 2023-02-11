import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../../../../core/util/constants.dart';
import '../../models/user_model.dart';
import 'auth_remote_data_source.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements AuthRemoteDataSource {
  AuthRemoteDataSourceImp({required super.dio});

  @override
  Future<UserModel> sendAuthData({
    required String name,
    required String password,
    required bool isLogin,
  }) async =>
      await performPostRequest<UserModel>(
        endpoint: isLogin ? Endpoints.login : Endpoints.register,
        data: RequestBody.sendAuthData(
          name: name,
          password: password,
        ),
      );
}
