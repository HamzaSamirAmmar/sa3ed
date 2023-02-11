import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../entities/user.dart';

abstract class AuthRepository extends BaseRepository {
  Future<Either<Failure, void>> sendAuthData({
    required String name,
    required String password,
    required bool isLogin,
  });
}
