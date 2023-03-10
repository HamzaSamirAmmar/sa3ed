import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/entities/summary_help.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/help_offers_repository.dart';

@lazySingleton
class GetHelpOffersUseCase
    implements UseCase<PaginateList<SummaryHelp>, ParamsGetHelpOffersUseCase> {
  final HelpOffersRepository _repository;

  GetHelpOffersUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<SummaryHelp>>> call(
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
