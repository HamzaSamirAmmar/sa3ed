import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/helpful_information.dart';
import '../repositories/helpful_information_repository.dart';

@lazySingleton
class GetHelpfulInformationUseCase
    implements UseCase<HelpfulInformation, NoParams> {
  final HelpfulInformationRepository _repository;

  GetHelpfulInformationUseCase(this._repository);

  @override
  Future<Either<Failure, HelpfulInformation>> call(NoParams params) async =>
      await _repository.getHelpfulInformation();
}
