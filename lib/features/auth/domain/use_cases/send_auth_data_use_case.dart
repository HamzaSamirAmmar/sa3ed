import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:sa3ed/features/auth/domain/repositories/auth_repository.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

@lazySingleton
class SendAuthDataUseCase implements UseCase<void, ParamsSendAuthDataUseCase> {
  final AuthRepository _repository;

  SendAuthDataUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsSendAuthDataUseCase params) async =>
      await _repository.sendAuthData(
        name: params.name,
        password: params.password,
        isLogin: params.isLogin,
      );
}

class ParamsSendAuthDataUseCase extends Equatable {
  final String name;
  final String password;
  final bool isLogin;

  const ParamsSendAuthDataUseCase({
    required this.name,
    required this.password,
    required this.isLogin,
  });

  @override
  List<Object?> get props => [name, password, isLogin];
}
