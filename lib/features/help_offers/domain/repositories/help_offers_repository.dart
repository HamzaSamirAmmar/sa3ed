import 'package:dartz/dartz.dart';
import 'package:sa3ed/core/entities/summary_help.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/help.dart';
import '../../../../core/entities/paginate_list.dart';
import '../../../../core/error/failures.dart';

abstract class HelpOffersRepository extends BaseRepository {
  Future<Either<Failure, PaginateList<SummaryHelp>>> getHelpOffers({
    required int page,
    required int? governorateId,
    required int? cityId,
    required int? helpTypeId,
  });
}
