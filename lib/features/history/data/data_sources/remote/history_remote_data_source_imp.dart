import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'history_remote_data_source.dart';

@LazySingleton(as: HistoryRemoteDataSource)
class HistoryRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HistoryRemoteDataSource {
  HistoryRemoteDataSourceImp({required super.dio});
}
