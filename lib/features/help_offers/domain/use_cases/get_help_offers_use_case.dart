import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/entities/help.dart';
import 'package:sa3ed/features/help_offers/domain/repositories/help_offers_repository.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';

@lazySingleton
class GetHelpOffersUseCase
    implements UseCase<PaginateList<Help>, ParamsGetHelpOffersUseCase> {
  final HelpOffersRepository _repository;

  GetHelpOffersUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<Help>>> call(
    ParamsGetHelpOffersUseCase params,
  ) async =>
      await _repository.getHelpOffers(
        page: params.page,
        governorateId: params.governorateId,
        cityId: params.cityId,
        helpTypeId: params.helpTypeId,
      );
}

class ParamsGetHelpOffersUseCase extends Equatable {
  final int page;

  final int? governorateId;

  final int? cityId;

  final int? helpTypeId;

  const ParamsGetHelpOffersUseCase({
    required this.page,
    required this.governorateId,
    required this.cityId,
    required this.helpTypeId,
  });

  @override
  List<Object?> get props => [page, governorateId, cityId, helpTypeId];
}
