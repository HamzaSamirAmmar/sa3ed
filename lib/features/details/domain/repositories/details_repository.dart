import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/entities/help.dart';
import '../../../../core/error/failures.dart';

abstract class DetailsRepository extends BaseRepository {
  Future<Either<Failure, Help>> getHelp({
    required int id,
    required bool isOffer,
  });
}
