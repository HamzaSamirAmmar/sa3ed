import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/entities/help.dart';
import 'package:sa3ed/features/details/domain/repositories/details_repository.dart';
import 'package:sa3ed/features/help_offers/domain/repositories/help_offers_repository.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

@lazySingleton
class GetHelpUseCase implements UseCase<Help, ParamsGetHelpUseCase> {
  final DetailsRepository _repository;

  GetHelpUseCase(this._repository);

  @override
  Future<Either<Failure, Help>> call(
    ParamsGetHelpUseCase params,
  ) async =>
      await _repository.getHelp(
        id: params.id,
        isOffer: params.isOffer,
      );
}

class ParamsGetHelpUseCase extends Equatable {
  final int id;
  final bool isOffer;

  const ParamsGetHelpUseCase({
    required this.id,
    required this.isOffer,
  });

  @override
  List<Object?> get props => [id, isOffer];
}
