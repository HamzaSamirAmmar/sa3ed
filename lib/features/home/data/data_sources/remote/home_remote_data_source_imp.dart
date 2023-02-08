import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/util/constants.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/governorate_model.dart';
import 'home_remote_data_source.dart';

@LazySingleton(as: HomeRemoteDataSource)
class HomeRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HomeRemoteDataSource {
  HomeRemoteDataSourceImp({required super.dio});

  @override
  Future<List<GovernorateModel>> getAllGovernorates() async =>
      await performGetListRequest<GovernorateModel>(
        endpoint: Endpoints.governorates,
      );
}
