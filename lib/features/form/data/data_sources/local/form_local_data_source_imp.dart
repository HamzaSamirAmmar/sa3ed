import 'package:injectable/injectable.dart';

import '../../../../../core/data/base_local_data_source.dart';
import 'form_local_data_source.dart';

@LazySingleton(as: FormLocalDataSource)
class FormLocalDataSourceImp extends BaseLocalDataSourceImp
    implements FormLocalDataSource {
  FormLocalDataSourceImp({required super.sharedPreferences});
}
