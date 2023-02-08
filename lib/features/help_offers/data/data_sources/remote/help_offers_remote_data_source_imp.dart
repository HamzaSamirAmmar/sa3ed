import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'help_offers_remote_data_source.dart';

@LazySingleton(as: HelpOffersRemoteDataSource)
class HelpOffersRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HelpOffersRemoteDataSource {
  HelpOffersRemoteDataSourceImp({required super.dio});
}
