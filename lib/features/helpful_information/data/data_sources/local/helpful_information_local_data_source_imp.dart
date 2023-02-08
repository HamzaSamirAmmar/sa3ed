import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'helpful_information_local_data_source.dart';

@LazySingleton(as: HelpfulInformationLocalDataSource)
class HelpfulInformationLocalDataSourceImp extends BaseLocalDataSourceImp
    implements HelpfulInformationLocalDataSource {
  HelpfulInformationLocalDataSourceImp({required super.sharedPreferences});
}
