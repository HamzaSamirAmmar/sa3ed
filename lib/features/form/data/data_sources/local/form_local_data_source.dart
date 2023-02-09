import '../../../../../core/data/base_local_data_source.dart';

abstract class FormLocalDataSource extends BaseLocalDataSource {
  Future<void> storeHelpId({required int id});
}
