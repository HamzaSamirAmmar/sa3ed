import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/helpful_information_repository.dart';
import '../data_sources/local/helpful_information_local_data_source.dart';
import '../data_sources/remote/helpful_information_remote_data_source.dart';

@LazySingleton(as: HelpfulInformationRepository)
class HelpfulInformationRepositoryImp extends BaseRepositoryImpl
    implements HelpfulInformationRepository {
  final HelpfulInformationLocalDataSource _local;
  final HelpfulInformationRemoteDataSource _remote;

  HelpfulInformationRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });
}
