import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/help.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/history_repository.dart';

@lazySingleton
class GetHelpHistoryUseCase implements UseCase<List<Help>, NoParams> {
  final HistoryRepository _repository;

  GetHelpHistoryUseCase(this._repository);

  @override
  Future<Either<Failure, List<Help>>> call(NoParams params) async =>
      await _repository.getHelpHistory();
}
