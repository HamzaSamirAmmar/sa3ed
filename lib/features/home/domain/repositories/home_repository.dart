import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../entities/governorate.dart';
import '../entities/help_type.dart';

abstract class HomeRepository extends BaseRepository {
  Future<Either<Failure, List<Governorate>>> getAllGovernorates();

  Future<Either<Failure, List<HelpType>>> getAllHelpTypes();
}
