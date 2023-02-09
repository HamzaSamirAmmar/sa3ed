// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i22;
import 'package:shared_preferences/shared_preferences.dart' as _i23;

import 'core/data/base_local_data_source.dart' as _i33;
import 'core/data/base_remote_data_source.dart' as _i34;
import 'core/data/base_repository.dart' as _i35;
import 'core/network/network_info.dart' as _i21;
import 'features/about_us/data/data_sources/local/about_us_local_data_source.dart'
    as _i29;
import 'features/about_us/data/data_sources/local/about_us_local_data_source_imp.dart'
    as _i30;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source.dart'
    as _i31;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source_imp.dart'
    as _i32;
import 'features/about_us/data/repositories/about_us_repository_imp.dart'
    as _i71;
import 'features/about_us/domain/repositories/about_us_repository.dart' as _i70;
import 'features/about_us/presentation/bloc/about_us_bloc.dart' as _i3;
import 'features/details/data/data_sources/local/details_local_data_source.dart'
    as _i36;
import 'features/details/data/data_sources/local/details_local_data_source_imp.dart'
    as _i37;
import 'features/details/data/data_sources/remote/details_remote_data_source.dart'
    as _i38;
import 'features/details/data/data_sources/remote/details_remote_data_source_imp.dart'
    as _i39;
import 'features/details/data/repositories/details_repository_imp.dart' as _i41;
import 'features/details/domain/repositories/details_repository.dart' as _i40;
import 'features/details/presentation/bloc/details_bloc.dart' as _i4;
import 'features/form/data/data_sources/local/form_local_data_source.dart'
    as _i42;
import 'features/form/data/data_sources/local/form_local_data_source_imp.dart'
    as _i43;
import 'features/form/data/data_sources/remote/form_remote_data_source.dart'
    as _i6;
import 'features/form/data/data_sources/remote/form_remote_data_source_imp.dart'
    as _i7;
import 'features/form/data/repositories/form_repository_imp.dart' as _i45;
import 'features/form/domain/repositories/form_repository.dart' as _i44;
import 'features/form/domain/use_cases/store_help_id_use_case.dart' as _i68;
import 'features/form/domain/use_cases/submit_help_form_use_case.dart' as _i69;
import 'features/form/presentation/bloc/form_bloc.dart' as _i72;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source.dart'
    as _i46;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source_imp.dart'
    as _i47;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source.dart'
    as _i8;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source_imp.dart'
    as _i9;
import 'features/help_offers/data/repositories/help_offers_repository_imp.dart'
    as _i49;
import 'features/help_offers/domain/repositories/help_offers_repository.dart'
    as _i48;
import 'features/help_offers/domain/use_cases/get_help_offers_use_case.dart'
    as _i75;
import 'features/help_offers/presentation/bloc/help_offers_bloc.dart' as _i76;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source.dart'
    as _i50;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source_imp.dart'
    as _i51;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source.dart'
    as _i11;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source_imp.dart'
    as _i12;
import 'features/help_requests/data/repositories/help_requests_repository_imp.dart'
    as _i53;
import 'features/help_requests/domain/repositories/help_requests_repository.dart'
    as _i52;
import 'features/help_requests/presentation/bloc/help_requests_bloc.dart'
    as _i10;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source.dart'
    as _i54;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source_imp.dart'
    as _i55;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source.dart'
    as _i14;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source_imp.dart'
    as _i15;
import 'features/helpful_information/data/repositories/helpful_information_repository_imp.dart'
    as _i57;
import 'features/helpful_information/domain/repositories/helpful_information_repository.dart'
    as _i56;
import 'features/helpful_information/presentation/bloc/helpful_information_bloc.dart'
    as _i13;
import 'features/history/data/data_sources/local/history_local_data_source.dart'
    as _i58;
import 'features/history/data/data_sources/local/history_local_data_source_imp.dart'
    as _i59;
import 'features/history/data/data_sources/remote/history_remote_data_source.dart'
    as _i17;
import 'features/history/data/data_sources/remote/history_remote_data_source_imp.dart'
    as _i18;
import 'features/history/data/repositories/history_repository_imp.dart' as _i61;
import 'features/history/domain/repositories/history_repository.dart' as _i60;
import 'features/history/presentation/bloc/history_bloc.dart' as _i16;
import 'features/home/data/data_sources/local/home_local_data_source.dart'
    as _i62;
import 'features/home/data/data_sources/local/home_local_data_source_imp.dart'
    as _i63;
import 'features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i19;
import 'features/home/data/data_sources/remote/home_remote_data_source_imp.dart'
    as _i20;
import 'features/home/data/repositories/home_repository_imp.dart' as _i65;
import 'features/home/domain/repositories/home_repository.dart' as _i64;
import 'features/home/domain/use_cases/get_all_governorates_use_case.dart'
    as _i73;
import 'features/home/domain/use_cases/get_all_help_types_use_case.dart'
    as _i74;
import 'features/home/presentation/bloc/home_bloc.dart' as _i77;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i25;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i26;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i27;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i28;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i67;
import 'features/splash/domain/repositories/splash_repository.dart' as _i66;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i24;
import 'injection.dart' as _i78; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i4.DetailsBloc>(() => _i4.DetailsBloc());
  gh.lazySingleton<_i5.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i6.FormRemoteDataSource>(
      () => _i7.FormRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i8.HelpOffersRemoteDataSource>(
      () => _i9.HelpOffersRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i10.HelpRequestsBloc>(() => _i10.HelpRequestsBloc());
  gh.lazySingleton<_i11.HelpRequestsRemoteDataSource>(
      () => _i12.HelpRequestsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i13.HelpfulInformationBloc>(() => _i13.HelpfulInformationBloc());
  gh.lazySingleton<_i14.HelpfulInformationRemoteDataSource>(
      () => _i15.HelpfulInformationRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i16.HistoryBloc>(() => _i16.HistoryBloc());
  gh.lazySingleton<_i17.HistoryRemoteDataSource>(
      () => _i18.HistoryRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i19.HomeRemoteDataSource>(
      () => _i20.HomeRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i21.NetworkInfo>(() => _i21.NetworkInfoImpl());
  await gh.factoryAsync<_i22.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i23.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i24.SplashBloc>(() => _i24.SplashBloc());
  gh.lazySingleton<_i25.SplashLocalDataSource>(() =>
      _i26.SplashLocalDataSourceImp(
          sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i27.SplashRemoteDataSource>(
      () => _i28.SplashRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i29.AboutUsLocalDataSource>(() =>
      _i30.AboutUsLocalDataSourceImp(
          sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i31.AboutUsRemoteDataSource>(
      () => _i32.AboutUsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i33.BaseLocalDataSource>(() => _i33.BaseLocalDataSourceImp(
      sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i34.BaseRemoteDataSource>(
      () => _i34.BaseRemoteDataSourceImpl(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i35.BaseRepository>(() => _i35.BaseRepositoryImpl(
        baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
        networkInfo: get<_i21.NetworkInfo>(),
      ));
  gh.lazySingleton<_i36.DetailsLocalDataSource>(() =>
      _i37.DetailsLocalDataSourceImp(
          sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i38.DetailsRemoteDataSource>(
      () => _i39.DetailsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i40.DetailsRepository>(() => _i41.DetailsRepositoryImp(
        get<_i36.DetailsLocalDataSource>(),
        get<_i38.DetailsRemoteDataSource>(),
        baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
        networkInfo: get<_i21.NetworkInfo>(),
      ));
  gh.lazySingleton<_i42.FormLocalDataSource>(() => _i43.FormLocalDataSourceImp(
      sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i44.FormRepository>(() => _i45.FormRepositoryImp(
        get<_i42.FormLocalDataSource>(),
        get<_i6.FormRemoteDataSource>(),
        baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
        networkInfo: get<_i21.NetworkInfo>(),
      ));
  gh.lazySingleton<_i46.HelpOffersLocalDataSource>(() =>
      _i47.HelpOffersLocalDataSourceImp(
          sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i48.HelpOffersRepository>(
      () => _i49.HelpOffersRepositoryImp(
            get<_i46.HelpOffersLocalDataSource>(),
            get<_i8.HelpOffersRemoteDataSource>(),
            baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
            networkInfo: get<_i21.NetworkInfo>(),
          ));
  gh.lazySingleton<_i50.HelpRequestsLocalDataSource>(() =>
      _i51.HelpRequestsLocalDataSourceImp(
          sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i52.HelpRequestsRepository>(
      () => _i53.HelpRequestsRepositoryImp(
            get<_i50.HelpRequestsLocalDataSource>(),
            get<_i11.HelpRequestsRemoteDataSource>(),
            baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
            networkInfo: get<_i21.NetworkInfo>(),
          ));
  gh.lazySingleton<_i54.HelpfulInformationLocalDataSource>(() =>
      _i55.HelpfulInformationLocalDataSourceImp(
          sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i56.HelpfulInformationRepository>(
      () => _i57.HelpfulInformationRepositoryImp(
            get<_i54.HelpfulInformationLocalDataSource>(),
            get<_i14.HelpfulInformationRemoteDataSource>(),
            baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
            networkInfo: get<_i21.NetworkInfo>(),
          ));
  gh.lazySingleton<_i58.HistoryLocalDataSource>(() =>
      _i59.HistoryLocalDataSourceImp(
          sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i60.HistoryRepository>(() => _i61.HistoryRepositoryImp(
        get<_i58.HistoryLocalDataSource>(),
        get<_i17.HistoryRemoteDataSource>(),
        baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
        networkInfo: get<_i21.NetworkInfo>(),
      ));
  gh.lazySingleton<_i62.HomeLocalDataSource>(() => _i63.HomeLocalDataSourceImp(
      sharedPreferences: get<_i23.SharedPreferences>()));
  gh.lazySingleton<_i64.HomeRepository>(() => _i65.HomeRepositoryImp(
        get<_i62.HomeLocalDataSource>(),
        get<_i19.HomeRemoteDataSource>(),
        baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
        networkInfo: get<_i21.NetworkInfo>(),
      ));
  gh.lazySingleton<_i66.SplashRepository>(() => _i67.SplashRepositoryImp(
        get<_i25.SplashLocalDataSource>(),
        get<_i27.SplashRemoteDataSource>(),
        baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
        networkInfo: get<_i21.NetworkInfo>(),
      ));
  gh.lazySingleton<_i68.StoreHelpIdUseCase>(
      () => _i68.StoreHelpIdUseCase(get<_i44.FormRepository>()));
  gh.lazySingleton<_i69.SubmitHelpFormUseCase>(
      () => _i69.SubmitHelpFormUseCase(get<_i44.FormRepository>()));
  gh.lazySingleton<_i70.AboutUsRepository>(() => _i71.AboutUsRepositoryImp(
        get<_i29.AboutUsLocalDataSource>(),
        get<_i31.AboutUsRemoteDataSource>(),
        baseLocalDataSource: get<_i33.BaseLocalDataSource>(),
        networkInfo: get<_i21.NetworkInfo>(),
      ));
  gh.factory<_i72.FormBloc>(() => _i72.FormBloc(
        get<_i69.SubmitHelpFormUseCase>(),
        get<_i68.StoreHelpIdUseCase>(),
      ));
  gh.lazySingleton<_i73.GetAllGovernoratesUseCase>(
      () => _i73.GetAllGovernoratesUseCase(get<_i64.HomeRepository>()));
  gh.lazySingleton<_i74.GetAllHelpTypesUseCase>(
      () => _i74.GetAllHelpTypesUseCase(get<_i64.HomeRepository>()));
  gh.lazySingleton<_i75.GetHelpOffersUseCase>(
      () => _i75.GetHelpOffersUseCase(get<_i48.HelpOffersRepository>()));
  gh.factory<_i76.HelpOffersBloc>(
      () => _i76.HelpOffersBloc(get<_i75.GetHelpOffersUseCase>()));
  gh.lazySingleton<_i77.HomeBloc>(() => _i77.HomeBloc(
        get<_i73.GetAllGovernoratesUseCase>(),
        get<_i74.GetAllHelpTypesUseCase>(),
      ));
  return get;
}

class _$RegisterModule extends _i78.RegisterModule {}
