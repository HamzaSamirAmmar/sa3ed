import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';

import 'help_requests_local_data_source.dart';

@LazySingleton(as: HelpRequestsLocalDataSource)
class HelpRequestsLocalDataSourceImp extends BaseLocalDataSourceImp
    implements HelpRequestsLocalDataSource {
  HelpRequestsLocalDataSourceImp({required super.sharedPreferences});
}
