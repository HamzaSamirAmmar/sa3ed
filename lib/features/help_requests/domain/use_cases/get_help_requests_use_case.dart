import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/entities/paginate_list.dart';
import '../../../../core/entities/summary_help.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repositories/help_requests_repository.dart';

@lazySingleton
class GetHelpRequestsUseCase
    implements
        UseCase<PaginateList<SummaryHelp>, ParamsGetHelpRequestsUseCase> {
  final HelpRequestsRepository _repository;

  GetHelpRequestsUseCase(this._repository);

  @override
  Future<Either<Failure, PaginateList<SummaryHelp>>> call(
    ParamsGetHelpRequestsUseCase params,
  ) async =>
      await _repository.getHelpRequests(
        page: params.page,
        governorateId: params.governorateId,
        cityId: params.cityId,
        helpTypeId: params.helpTypeId,
      );
}

class ParamsGetHelpRequestsUseCase extends Equatable {
  final int page;

  final int? governorateId;

  final int? cityId;

  final int? helpTypeId;

  const ParamsGetHelpRequestsUseCase({
    required this.page,
    required this.governorateId,
    required this.cityId,
    required this.helpTypeId,
  });

  @override
  List<Object?> get props => [page, governorateId, cityId, helpTypeId];
}
