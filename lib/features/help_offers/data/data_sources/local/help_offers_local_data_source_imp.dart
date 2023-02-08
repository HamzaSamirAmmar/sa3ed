import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'help_offers_local_data_source.dart';

@LazySingleton(as: HelpOffersLocalDataSource)
class HelpOffersLocalDataSourceImp extends BaseLocalDataSourceImp
    implements HelpOffersLocalDataSource {
  HelpOffersLocalDataSourceImp({required super.sharedPreferences});
}
