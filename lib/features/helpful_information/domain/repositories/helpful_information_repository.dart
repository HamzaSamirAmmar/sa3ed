import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../entities/helpful_information.dart';

abstract class HelpfulInformationRepository extends BaseRepository {
  Future<Either<Failure, List<HelpfulInformation>>> getHelpfulInformation();
}
