import '../../../../../core/data/base_remote_data_source.dart';
import '../../models/governorate_model.dart';

abstract class HomeRemoteDataSource extends BaseRemoteDataSource {
  Future<List<GovernorateModel>> getAllGovernorates();
}
