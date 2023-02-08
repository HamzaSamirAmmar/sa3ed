import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'details_remote_data_source.dart';

@LazySingleton(as: DetailsRemoteDataSource)
class DetailsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements DetailsRemoteDataSource {
  DetailsRemoteDataSourceImp({required super.dio});
}
