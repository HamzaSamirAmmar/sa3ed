import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/entities/summary_help.dart';
import '../../../../core/error/failures.dart';

abstract class HelpRequestsRepository extends BaseRepository {
  Future<Either<Failure, PaginateList<SummaryHelp>>> getHelpRequests({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  });
}
