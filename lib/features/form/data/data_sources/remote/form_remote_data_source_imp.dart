import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_remote_data_source.dart';
import 'form_remote_data_source.dart';

@LazySingleton(as: FormRemoteDataSource)
class FormRemoteDataSourceImp extends BaseRemoteDataSourceImpl
    implements FormRemoteDataSource {
  FormRemoteDataSourceImp({required super.dio});
}
