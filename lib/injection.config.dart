// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i19;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import 'core/data/base_local_data_source.dart' as _i30;
import 'core/data/base_remote_data_source.dart' as _i31;
import 'core/data/base_repository.dart' as _i32;
import 'core/network/network_info.dart' as _i18;
import 'features/about_us/data/data_sources/local/about_us_local_data_source.dart'
    as _i26;
import 'features/about_us/data/data_sources/local/about_us_local_data_source_imp.dart'
    as _i27;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source.dart'
    as _i28;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source_imp.dart'
    as _i29;
import 'features/about_us/data/repositories/about_us_repository_imp.dart'
    as _i69;
import 'features/about_us/domain/repositories/about_us_repository.dart' as _i68;
import 'features/about_us/presentation/bloc/about_us_bloc.dart' as _i3;
import 'features/details/data/data_sources/local/details_local_data_source.dart'
    as _i33;
import 'features/details/data/data_sources/local/details_local_data_source_imp.dart'
    as _i34;
import 'features/details/data/data_sources/remote/details_remote_data_source.dart'
    as _i35;
import 'features/details/data/data_sources/remote/details_remote_data_source_imp.dart'
    as _i36;
import 'features/details/data/repositories/details_repository_imp.dart' as _i38;
import 'features/details/domain/repositories/details_repository.dart' as _i37;
import 'features/details/domain/use_cases/get_help_use_case.dart' as _i43;
import 'features/details/presentation/bloc/details_bloc.dart' as _i71;
import 'features/form/data/data_sources/local/form_local_data_source.dart'
    as _i39;
import 'features/form/data/data_sources/local/form_local_data_source_imp.dart'
    as _i40;
import 'features/form/data/data_sources/remote/form_remote_data_source.dart'
    as _i5;
import 'features/form/data/data_sources/remote/form_remote_data_source_imp.dart'
    as _i6;
import 'features/form/data/repositories/form_repository_imp.dart' as _i42;
import 'features/form/domain/repositories/form_repository.dart' as _i41;
import 'features/form/domain/use_cases/store_help_id_use_case.dart' as _i66;
import 'features/form/domain/use_cases/submit_help_form_use_case.dart' as _i67;
import 'features/form/presentation/bloc/form_bloc.dart' as _i72;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source.dart'
    as _i44;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source_imp.dart'
    as _i45;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source.dart'
    as _i7;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source_imp.dart'
    as _i8;
import 'features/help_offers/data/repositories/help_offers_repository_imp.dart'
    as _i47;
import 'features/help_offers/domain/repositories/help_offers_repository.dart'
    as _i46;
import 'features/help_offers/domain/use_cases/get_help_offers_use_case.dart'
    as _i76;
import 'features/help_offers/presentation/bloc/help_offers_bloc.dart' as _i78;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source.dart'
    as _i48;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source_imp.dart'
    as _i49;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source.dart'
    as _i9;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source_imp.dart'
    as _i10;
import 'features/help_requests/data/repositories/help_requests_repository_imp.dart'
    as _i51;
import 'features/help_requests/domain/repositories/help_requests_repository.dart'
    as _i50;
import 'features/help_requests/domain/use_cases/get_help_requests_use_case.dart'
    as _i77;
import 'features/help_requests/presentation/bloc/help_requests_bloc.dart'
    as _i79;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source.dart'
    as _i52;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source_imp.dart'
    as _i53;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source.dart'
    as _i12;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source_imp.dart'
    as _i13;
import 'features/helpful_information/data/repositories/helpful_information_repository_imp.dart'
    as _i55;
import 'features/helpful_information/domain/repositories/helpful_information_repository.dart'
    as _i54;
import 'features/helpful_information/presentation/bloc/helpful_information_bloc.dart'
    as _i11;
import 'features/history/data/data_sources/local/history_local_data_source.dart'
    as _i56;
import 'features/history/data/data_sources/local/history_local_data_source_imp.dart'
    as _i57;
import 'features/history/data/data_sources/remote/history_remote_data_source.dart'
    as _i14;
import 'features/history/data/data_sources/remote/history_remote_data_source_imp.dart'
    as _i15;
import 'features/history/data/repositories/history_repository_imp.dart' as _i59;
import 'features/history/domain/repositories/history_repository.dart' as _i58;
import 'features/history/domain/use_cases/delete_help_use_case.dart' as _i70;
import 'features/history/domain/use_cases/get_help_history_use_case.dart'
    as _i75;
import 'features/history/presentation/bloc/history_bloc.dart' as _i80;
import 'features/home/data/data_sources/local/home_local_data_source.dart'
    as _i60;
import 'features/home/data/data_sources/local/home_local_data_source_imp.dart'
    as _i61;
import 'features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i16;
import 'features/home/data/data_sources/remote/home_remote_data_source_imp.dart'
    as _i17;
import 'features/home/data/repositories/home_repository_imp.dart' as _i63;
import 'features/home/domain/repositories/home_repository.dart' as _i62;
import 'features/home/domain/use_cases/get_all_governorates_use_case.dart'
    as _i73;
import 'features/home/domain/use_cases/get_all_help_types_use_case.dart'
    as _i74;
import 'features/home/presentation/bloc/home_bloc.dart' as _i81;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i22;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i23;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i24;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i25;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i65;
import 'features/splash/domain/repositories/splash_repository.dart' as _i64;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i21;
import 'injection.dart' as _i82; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AboutUsBloc>(() => _i3.AboutUsBloc());
  gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i5.FormRemoteDataSource>(
      () => _i6.FormRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i7.HelpOffersRemoteDataSource>(
      () => _i8.HelpOffersRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i9.HelpRequestsRemoteDataSource>(
      () => _i10.HelpRequestsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.factory<_i11.HelpfulInformationBloc>(() => _i11.HelpfulInformationBloc());
  gh.lazySingleton<_i12.HelpfulInformationRemoteDataSource>(
      () => _i13.HelpfulInformationRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i14.HistoryRemoteDataSource>(
      () => _i15.HistoryRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i16.HomeRemoteDataSource>(
      () => _i17.HomeRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i18.NetworkInfo>(() => _i18.NetworkInfoImpl());
  await gh.factoryAsync<_i19.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i20.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i21.SplashBloc>(() => _i21.SplashBloc());
  gh.lazySingleton<_i22.SplashLocalDataSource>(() =>
      _i23.SplashLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i24.SplashRemoteDataSource>(
      () => _i25.SplashRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i26.AboutUsLocalDataSource>(() =>
      _i27.AboutUsLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i28.AboutUsRemoteDataSource>(
      () => _i29.AboutUsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i30.BaseLocalDataSource>(() => _i30.BaseLocalDataSourceImp(
      sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i31.BaseRemoteDataSource>(
      () => _i31.BaseRemoteDataSourceImpl(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i32.BaseRepository>(() => _i32.BaseRepositoryImpl(
        baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
        networkInfo: get<_i18.NetworkInfo>(),
      ));
  gh.lazySingleton<_i33.DetailsLocalDataSource>(() =>
      _i34.DetailsLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i35.DetailsRemoteDataSource>(
      () => _i36.DetailsRemoteDataSourceImp(dio: get<_i4.Dio>()));
  gh.lazySingleton<_i37.DetailsRepository>(() => _i38.DetailsRepositoryImp(
        get<_i33.DetailsLocalDataSource>(),
        get<_i35.DetailsRemoteDataSource>(),
        baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
        networkInfo: get<_i18.NetworkInfo>(),
      ));
  gh.lazySingleton<_i39.FormLocalDataSource>(() => _i40.FormLocalDataSourceImp(
      sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i41.FormRepository>(() => _i42.FormRepositoryImp(
        get<_i39.FormLocalDataSource>(),
        get<_i5.FormRemoteDataSource>(),
        baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
        networkInfo: get<_i18.NetworkInfo>(),
      ));
  gh.lazySingleton<_i43.GetHelpUseCase>(
      () => _i43.GetHelpUseCase(get<_i37.DetailsRepository>()));
  gh.lazySingleton<_i44.HelpOffersLocalDataSource>(() =>
      _i45.HelpOffersLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i46.HelpOffersRepository>(
      () => _i47.HelpOffersRepositoryImp(
            get<_i44.HelpOffersLocalDataSource>(),
            get<_i7.HelpOffersRemoteDataSource>(),
            baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
            networkInfo: get<_i18.NetworkInfo>(),
          ));
  gh.lazySingleton<_i48.HelpRequestsLocalDataSource>(() =>
      _i49.HelpRequestsLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i50.HelpRequestsRepository>(
      () => _i51.HelpRequestsRepositoryImp(
            get<_i48.HelpRequestsLocalDataSource>(),
            get<_i9.HelpRequestsRemoteDataSource>(),
            baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
            networkInfo: get<_i18.NetworkInfo>(),
          ));
  gh.lazySingleton<_i52.HelpfulInformationLocalDataSource>(() =>
      _i53.HelpfulInformationLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i54.HelpfulInformationRepository>(
      () => _i55.HelpfulInformationRepositoryImp(
            get<_i52.HelpfulInformationLocalDataSource>(),
            get<_i12.HelpfulInformationRemoteDataSource>(),
            baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
            networkInfo: get<_i18.NetworkInfo>(),
          ));
  gh.lazySingleton<_i56.HistoryLocalDataSource>(() =>
      _i57.HistoryLocalDataSourceImp(
          sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i58.HistoryRepository>(() => _i59.HistoryRepositoryImp(
        get<_i56.HistoryLocalDataSource>(),
        get<_i14.HistoryRemoteDataSource>(),
        baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
        networkInfo: get<_i18.NetworkInfo>(),
      ));
  gh.lazySingleton<_i60.HomeLocalDataSource>(() => _i61.HomeLocalDataSourceImp(
      sharedPreferences: get<_i20.SharedPreferences>()));
  gh.lazySingleton<_i62.HomeRepository>(() => _i63.HomeRepositoryImp(
        get<_i60.HomeLocalDataSource>(),
        get<_i16.HomeRemoteDataSource>(),
        baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
        networkInfo: get<_i18.NetworkInfo>(),
      ));
  gh.lazySingleton<_i64.SplashRepository>(() => _i65.SplashRepositoryImp(
        get<_i22.SplashLocalDataSource>(),
        get<_i24.SplashRemoteDataSource>(),
        baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
        networkInfo: get<_i18.NetworkInfo>(),
      ));
  gh.lazySingleton<_i66.StoreHelpIdUseCase>(
      () => _i66.StoreHelpIdUseCase(get<_i41.FormRepository>()));
  gh.lazySingleton<_i67.SubmitHelpFormUseCase>(
      () => _i67.SubmitHelpFormUseCase(get<_i41.FormRepository>()));
  gh.lazySingleton<_i68.AboutUsRepository>(() => _i69.AboutUsRepositoryImp(
        get<_i26.AboutUsLocalDataSource>(),
        get<_i28.AboutUsRemoteDataSource>(),
        baseLocalDataSource: get<_i30.BaseLocalDataSource>(),
        networkInfo: get<_i18.NetworkInfo>(),
      ));
  gh.lazySingleton<_i70.DeleteHelpUseCase>(
      () => _i70.DeleteHelpUseCase(get<_i58.HistoryRepository>()));
  gh.factory<_i71.DetailsBloc>(
      () => _i71.DetailsBloc(get<_i43.GetHelpUseCase>()));
  gh.factory<_i72.FormBloc>(() => _i72.FormBloc(
        get<_i67.SubmitHelpFormUseCase>(),
        get<_i66.StoreHelpIdUseCase>(),
      ));
  gh.lazySingleton<_i73.GetAllGovernoratesUseCase>(
      () => _i73.GetAllGovernoratesUseCase(get<_i62.HomeRepository>()));
  gh.lazySingleton<_i74.GetAllHelpTypesUseCase>(
      () => _i74.GetAllHelpTypesUseCase(get<_i62.HomeRepository>()));
  gh.lazySingleton<_i75.GetHelpHistoryUseCase>(
      () => _i75.GetHelpHistoryUseCase(get<_i58.HistoryRepository>()));
  gh.lazySingleton<_i76.GetHelpOffersUseCase>(
      () => _i76.GetHelpOffersUseCase(get<_i46.HelpOffersRepository>()));
  gh.lazySingleton<_i77.GetHelpRequestsUseCase>(
      () => _i77.GetHelpRequestsUseCase(get<_i50.HelpRequestsRepository>()));
  gh.factory<_i78.HelpOffersBloc>(
      () => _i78.HelpOffersBloc(get<_i76.GetHelpOffersUseCase>()));
  gh.factory<_i79.HelpRequestsBloc>(
      () => _i79.HelpRequestsBloc(get<_i77.GetHelpRequestsUseCase>()));
  gh.factory<_i80.HistoryBloc>(() => _i80.HistoryBloc(
        get<_i75.GetHelpHistoryUseCase>(),
        get<_i70.DeleteHelpUseCase>(),
      ));
  gh.lazySingleton<_i81.HomeBloc>(() => _i81.HomeBloc(
        get<_i73.GetAllGovernoratesUseCase>(),
        get<_i74.GetAllHelpTypesUseCase>(),
      ));
  return get;
}

class _$RegisterModule extends _i82.RegisterModule {}
