import 'package:dartz/dartz.dart';
import 'package:sa3ed/core/entities/help.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';

abstract class HistoryRepository extends BaseRepository {
  Future<Either<Failure, List<Help>>> getHelpHistory();

  Future<Either<Failure, void>> deleteHelp({
    required int id,
    required bool isOffer,
});
}
