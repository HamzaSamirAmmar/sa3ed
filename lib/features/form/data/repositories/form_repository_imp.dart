import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../domain/repositories/form_repository.dart';
import '../data_sources/local/form_local_data_source.dart';
import '../data_sources/remote/form_remote_data_source.dart';

@LazySingleton(as: FormRepository)
class FormRepositoryImp extends BaseRepositoryImpl implements FormRepository {
  final FormLocalDataSource _local;
  final FormRemoteDataSource _remote;

  FormRepositoryImp(
    this._local,
    this._remote, {
    required super.baseLocalDataSource,
    required super.networkInfo,
  });
}
