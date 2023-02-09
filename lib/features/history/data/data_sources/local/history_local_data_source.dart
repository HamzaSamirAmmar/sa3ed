import '../../../../../core/data/base_local_data_source.dart';

abstract class HistoryLocalDataSource extends BaseLocalDataSource {
  Future<List<String>> getHelpIds();
}
