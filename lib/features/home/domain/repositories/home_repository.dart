import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../entities/governorate.dart';

abstract class HomeRepository extends BaseRepository {
  Future<Either<Failure, List<Governorate>>> getAllGovernorates();
}
