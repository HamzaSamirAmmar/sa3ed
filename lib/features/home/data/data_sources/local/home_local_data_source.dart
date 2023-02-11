import '../../../../../core/data/base_local_data_source.dart';
import '../../models/governorate_model.dart';

abstract class HomeLocalDataSource extends BaseLocalDataSource {
  Future<List<GovernorateModel>> getGovernorates();

  Future<void> storeGovernorates({
    required List<GovernorateModel> governorates,
  });
}
