// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i17;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import 'core/data/base_local_data_source.dart' as _i27;
import 'core/data/base_remote_data_source.dart' as _i28;
import 'core/data/base_repository.dart' as _i29;
import 'core/network/network_info.dart' as _i16;
import 'features/about_us/data/data_sources/local/about_us_local_data_source.dart'
    as _i23;
import 'features/about_us/data/data_sources/local/about_us_local_data_source_imp.dart'
    as _i24;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source.dart'
    as _i25;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source_imp.dart'
    as _i26;
import 'features/about_us/data/repositories/about_us_repository_imp.dart'
    as _i66;
import 'features/about_us/domain/repositories/about_us_repository.dart' as _i65;
import 'features/about_us/domain/use_cases/get_about_us_use_case.dart' as _i71;
import 'features/about_us/presentation/bloc/about_us_bloc.dart' as _i84;
import 'features/details/data/data_sources/local/details_local_data_source.dart'
    as _i30;
import 'features/details/data/data_sources/local/details_local_data_source_imp.dart'
    as _i31;
import 'features/details/data/data_sources/remote/details_remote_data_source.dart'
    as _i32;
import 'features/details/data/data_sources/remote/details_remote_data_source_imp.dart'
    as _i33;
import 'features/details/data/repositories/details_repository_imp.dart' as _i35;
import 'features/details/domain/repositories/details_repository.dart' as _i34;
import 'features/details/domain/use_cases/get_help_use_case.dart' as _i40;
import 'features/details/presentation/bloc/details_bloc.dart' as _i69;
import 'features/form/data/data_sources/local/form_local_data_source.dart'
    as _i36;
import 'features/form/data/data_sources/local/form_local_data_source_imp.dart'
    as _i37;
import 'features/form/data/data_sources/remote/form_remote_data_source.dart'
    as _i4;
import 'features/form/data/data_sources/remote/form_remote_data_source_imp.dart'
    as _i5;
import 'features/form/data/repositories/form_repository_imp.dart' as _i39;
import 'features/form/domain/repositories/form_repository.dart' as _i38;
import 'features/form/domain/use_cases/store_help_id_use_case.dart' as _i63;
import 'features/form/domain/use_cases/submit_help_form_use_case.dart' as _i64;
import 'features/form/presentation/bloc/form_bloc.dart' as _i70;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source.dart'
    as _i41;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source_imp.dart'
    as _i42;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source.dart'
    as _i6;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source_imp.dart'
    as _i7;
import 'features/help_offers/data/repositories/help_offers_repository_imp.dart'
    as _i44;
import 'features/help_offers/domain/repositories/help_offers_repository.dart'
    as _i43;
import 'features/help_offers/domain/use_cases/get_help_offers_use_case.dart'
    as _i75;
import 'features/help_offers/presentation/bloc/help_offers_bloc.dart' as _i78;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source.dart'
    as _i45;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source_imp.dart'
    as _i46;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source.dart'
    as _i8;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source_imp.dart'
    as _i9;
import 'features/help_requests/data/repositories/help_requests_repository_imp.dart'
    as _i48;
import 'features/help_requests/domain/repositories/help_requests_repository.dart'
    as _i47;
import 'features/help_requests/domain/use_cases/get_help_requests_use_case.dart'
    as _i76;
import 'features/help_requests/presentation/bloc/help_requests_bloc.dart'
    as _i79;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source.dart'
    as _i49;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source_imp.dart'
    as _i50;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source.dart'
    as _i10;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source_imp.dart'
    as _i11;
import 'features/helpful_information/data/repositories/helpful_information_repository_imp.dart'
    as _i52;
import 'features/helpful_information/domain/repositories/helpful_information_repository.dart'
    as _i51;
import 'features/helpful_information/domain/use_cases/get_helpful_information_use_case.dart'
    as _i77;
import 'features/helpful_information/presentation/bloc/helpful_information_bloc.dart'
    as _i80;
import 'features/history/data/data_sources/local/history_local_data_source.dart'
    as _i53;
import 'features/history/data/data_sources/local/history_local_data_source_imp.dart'
    as _i54;
import 'features/history/data/data_sources/remote/history_remote_data_source.dart'
    as _i12;
import 'features/history/data/data_sources/remote/history_remote_data_source_imp.dart'
    as _i13;
import 'features/history/data/repositories/history_repository_imp.dart' as _i56;
import 'features/history/domain/repositories/history_repository.dart' as _i55;
import 'features/history/domain/use_cases/delete_help_use_case.dart' as _i68;
import 'features/history/domain/use_cases/get_help_history_use_case.dart'
    as _i74;
import 'features/history/presentation/bloc/history_bloc.dart' as _i81;
import 'features/home/data/data_sources/local/home_local_data_source.dart'
    as _i57;
import 'features/home/data/data_sources/local/home_local_data_source_imp.dart'
    as _i58;
import 'features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i14;
import 'features/home/data/data_sources/remote/home_remote_data_source_imp.dart'
    as _i15;
import 'features/home/data/repositories/home_repository_imp.dart' as _i60;
import 'features/home/domain/repositories/home_repository.dart' as _i59;
import 'features/home/domain/use_cases/get_all_governorates_use_case.dart'
    as _i72;
import 'features/home/domain/use_cases/get_all_help_types_use_case.dart'
    as _i73;
import 'features/home/presentation/bloc/home_bloc.dart' as _i82;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i19;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i20;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i21;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i22;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i62;
import 'features/splash/domain/repositories/splash_repository.dart' as _i61;
import 'features/splash/domain/use_cases/check_version_use_case.dart' as _i67;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i83;
import 'injection.dart' as _i85; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.FormRemoteDataSource>(
      () => _i5.FormRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.HelpOffersRemoteDataSource>(
      () => _i7.HelpOffersRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i8.HelpRequestsRemoteDataSource>(
      () => _i9.HelpRequestsRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i10.HelpfulInformationRemoteDataSource>(
      () => _i11.HelpfulInformationRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i12.HistoryRemoteDataSource>(
      () => _i13.HistoryRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i14.HomeRemoteDataSource>(
      () => _i15.HomeRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i16.NetworkInfo>(() => _i16.NetworkInfoImpl());
  await gh.factoryAsync<_i17.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.lazySingleton<_i19.SplashLocalDataSource>(() =>
      _i20.SplashLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i21.SplashRemoteDataSource>(
      () => _i22.SplashRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i23.AboutUsLocalDataSource>(() =>
      _i24.AboutUsLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i25.AboutUsRemoteDataSource>(
      () => _i26.AboutUsRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i27.BaseLocalDataSource>(() => _i27.BaseLocalDataSourceImp(
      sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i28.BaseRemoteDataSource>(
      () => _i28.BaseRemoteDataSourceImpl(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i29.BaseRepository>(() => _i29.BaseRepositoryImpl(
        baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
        networkInfo: get<_i16.NetworkInfo>(),
      ));
  gh.lazySingleton<_i30.DetailsLocalDataSource>(() =>
      _i31.DetailsLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i32.DetailsRemoteDataSource>(
      () => _i33.DetailsRemoteDataSourceImp(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i34.DetailsRepository>(() => _i35.DetailsRepositoryImp(
        get<_i30.DetailsLocalDataSource>(),
        get<_i32.DetailsRemoteDataSource>(),
        baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
        networkInfo: get<_i16.NetworkInfo>(),
      ));
  gh.lazySingleton<_i36.FormLocalDataSource>(() => _i37.FormLocalDataSourceImp(
      sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i38.FormRepository>(() => _i39.FormRepositoryImp(
        get<_i36.FormLocalDataSource>(),
        get<_i4.FormRemoteDataSource>(),
        baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
        networkInfo: get<_i16.NetworkInfo>(),
      ));
  gh.lazySingleton<_i40.GetHelpUseCase>(
      () => _i40.GetHelpUseCase(get<_i34.DetailsRepository>()));
  gh.lazySingleton<_i41.HelpOffersLocalDataSource>(() =>
      _i42.HelpOffersLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i43.HelpOffersRepository>(
      () => _i44.HelpOffersRepositoryImp(
            get<_i41.HelpOffersLocalDataSource>(),
            get<_i6.HelpOffersRemoteDataSource>(),
            baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
            networkInfo: get<_i16.NetworkInfo>(),
          ));
  gh.lazySingleton<_i45.HelpRequestsLocalDataSource>(() =>
      _i46.HelpRequestsLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i47.HelpRequestsRepository>(
      () => _i48.HelpRequestsRepositoryImp(
            get<_i45.HelpRequestsLocalDataSource>(),
            get<_i8.HelpRequestsRemoteDataSource>(),
            baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
            networkInfo: get<_i16.NetworkInfo>(),
          ));
  gh.lazySingleton<_i49.HelpfulInformationLocalDataSource>(() =>
      _i50.HelpfulInformationLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i51.HelpfulInformationRepository>(
      () => _i52.HelpfulInformationRepositoryImp(
            get<_i49.HelpfulInformationLocalDataSource>(),
            get<_i10.HelpfulInformationRemoteDataSource>(),
            baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
            networkInfo: get<_i16.NetworkInfo>(),
          ));
  gh.lazySingleton<_i53.HistoryLocalDataSource>(() =>
      _i54.HistoryLocalDataSourceImp(
          sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i55.HistoryRepository>(() => _i56.HistoryRepositoryImp(
        get<_i53.HistoryLocalDataSource>(),
        get<_i12.HistoryRemoteDataSource>(),
        baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
        networkInfo: get<_i16.NetworkInfo>(),
      ));
  gh.lazySingleton<_i57.HomeLocalDataSource>(() => _i58.HomeLocalDataSourceImp(
      sharedPreferences: get<_i18.SharedPreferences>()));
  gh.lazySingleton<_i59.HomeRepository>(() => _i60.HomeRepositoryImp(
        get<_i57.HomeLocalDataSource>(),
        get<_i14.HomeRemoteDataSource>(),
        baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
        networkInfo: get<_i16.NetworkInfo>(),
      ));
  gh.lazySingleton<_i61.SplashRepository>(() => _i62.SplashRepositoryImp(
        get<_i19.SplashLocalDataSource>(),
        get<_i21.SplashRemoteDataSource>(),
        baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
        networkInfo: get<_i16.NetworkInfo>(),
      ));
  gh.lazySingleton<_i63.StoreHelpIdUseCase>(
      () => _i63.StoreHelpIdUseCase(get<_i38.FormRepository>()));
  gh.lazySingleton<_i64.SubmitHelpFormUseCase>(
      () => _i64.SubmitHelpFormUseCase(get<_i38.FormRepository>()));
  gh.lazySingleton<_i65.AboutUsRepository>(() => _i66.AboutUsRepositoryImp(
        get<_i23.AboutUsLocalDataSource>(),
        get<_i25.AboutUsRemoteDataSource>(),
        baseLocalDataSource: get<_i27.BaseLocalDataSource>(),
        networkInfo: get<_i16.NetworkInfo>(),
      ));
  gh.lazySingleton<_i67.CheckVersionUseCase>(
      () => _i67.CheckVersionUseCase(get<_i61.SplashRepository>()));
  gh.lazySingleton<_i68.DeleteHelpUseCase>(
      () => _i68.DeleteHelpUseCase(get<_i55.HistoryRepository>()));
  gh.factory<_i69.DetailsBloc>(
      () => _i69.DetailsBloc(get<_i40.GetHelpUseCase>()));
  gh.factory<_i70.FormBloc>(() => _i70.FormBloc(
        get<_i64.SubmitHelpFormUseCase>(),
        get<_i63.StoreHelpIdUseCase>(),
      ));
  gh.lazySingleton<_i71.GetAboutUsUseCase>(
      () => _i71.GetAboutUsUseCase(get<_i65.AboutUsRepository>()));
  gh.lazySingleton<_i72.GetAllGovernoratesUseCase>(
      () => _i72.GetAllGovernoratesUseCase(get<_i59.HomeRepository>()));
  gh.lazySingleton<_i73.GetAllHelpTypesUseCase>(
      () => _i73.GetAllHelpTypesUseCase(get<_i59.HomeRepository>()));
  gh.lazySingleton<_i74.GetHelpHistoryUseCase>(
      () => _i74.GetHelpHistoryUseCase(get<_i55.HistoryRepository>()));
  gh.lazySingleton<_i75.GetHelpOffersUseCase>(
      () => _i75.GetHelpOffersUseCase(get<_i43.HelpOffersRepository>()));
  gh.lazySingleton<_i76.GetHelpRequestsUseCase>(
      () => _i76.GetHelpRequestsUseCase(get<_i47.HelpRequestsRepository>()));
  gh.lazySingleton<_i77.GetHelpfulInformationUseCase>(() =>
      _i77.GetHelpfulInformationUseCase(
          get<_i51.HelpfulInformationRepository>()));
  gh.factory<_i78.HelpOffersBloc>(
      () => _i78.HelpOffersBloc(get<_i75.GetHelpOffersUseCase>()));
  gh.factory<_i79.HelpRequestsBloc>(
      () => _i79.HelpRequestsBloc(get<_i76.GetHelpRequestsUseCase>()));
  gh.factory<_i80.HelpfulInformationBloc>(() =>
      _i80.HelpfulInformationBloc(get<_i77.GetHelpfulInformationUseCase>()));
  gh.factory<_i81.HistoryBloc>(() => _i81.HistoryBloc(
        get<_i74.GetHelpHistoryUseCase>(),
        get<_i68.DeleteHelpUseCase>(),
      ));
  gh.lazySingleton<_i82.HomeBloc>(() => _i82.HomeBloc(
        get<_i72.GetAllGovernoratesUseCase>(),
        get<_i73.GetAllHelpTypesUseCase>(),
      ));
  gh.lazySingleton<_i83.SplashBloc>(() => _i83.SplashBloc(
        get<_i17.PackageInfo>(),
        get<_i67.CheckVersionUseCase>(),
      ));
  gh.factory<_i84.AboutUsBloc>(
      () => _i84.AboutUsBloc(get<_i71.GetAboutUsUseCase>()));
  return get;
}

class _$RegisterModule extends _i85.RegisterModule {}
