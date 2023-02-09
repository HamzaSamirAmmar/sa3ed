import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/help.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/history_repository.dart';

@lazySingleton
class DeleteHelpUseCase implements UseCase<void, ParamsDeleteHelpUseCase> {
  final HistoryRepository _repository;

  DeleteHelpUseCase(this._repository);

  @override
  Future<Either<Failure, void>> call(ParamsDeleteHelpUseCase params) async =>
      await _repository.deleteHelp(
        id: params.id,
        isOffer: params.isOffer,
      );
}

class ParamsDeleteHelpUseCase extends Equatable {
  final int id;
  final bool isOffer;

  const ParamsDeleteHelpUseCase({
    required this.id,
    required this.isOffer,
  });

  @override
  List<Object?> get props => [id, isOffer];
}
