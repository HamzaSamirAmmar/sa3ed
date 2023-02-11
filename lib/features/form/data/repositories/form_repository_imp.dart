import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/data/base_repository.dart';
import '../../../../core/error/failures.dart';
import '../../domain/entities/submitted_form.dart';
import '../../domain/repositories/form_repository.dart';
import '../data_sources/local/form_local_data_source.dart';
import '../data_sources/remote/form_remote_data_source.dart';
import '../models/help_form_model.dart';

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

  @override
  Future<Either<Failure, SubmittedForm>> submitHelpForm({
    required HelpFormModel form,
    required bool isOffer,
  }) async =>
      await remoteRequest<SubmittedForm>(
        (token) => _remote.submitHelpForm(
          form: form,
          isOffer: isOffer,
          token: token,
        ),
      );

  @override
  Future<Either<Failure, void>> storeHelpId({
    required int id,
  }) async =>
      await localRequest<void>(
        () => _local.storeHelpId(
          id: id,
        ),
      );
}
