import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'help_requests_remote_data_source.dart';

@LazySingleton(as: HelpRequestsRemoteDataSource)
class HelpRequestsRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HelpRequestsRemoteDataSource {
  HelpRequestsRemoteDataSourceImp({required super.dio});
}
