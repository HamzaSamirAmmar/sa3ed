import 'package:dartz/dartz.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../entities/about_us.dart';

abstract class AboutUsRepository extends BaseRepository {
  Future<Either<Failure, AboutUs>> getAboutUs();
}
