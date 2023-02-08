import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'helpful_information_remote_data_source.dart';

@LazySingleton(as: HelpfulInformationRemoteDataSource)
class HelpfulInformationRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements HelpfulInformationRemoteDataSource {
  HelpfulInformationRemoteDataSourceImp({required super.dio});
}
