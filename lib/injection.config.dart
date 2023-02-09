// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i23;
import 'package:shared_preferences/shared_preferences.dart' as _i24;

import 'core/data/base_local_data_source.dart' as _i34;
import 'core/data/base_remote_data_source.dart' as _i35;
import 'core/data/base_repository.dart' as _i36;
import 'core/network/network_info.dart' as _i22;
import 'features/about_us/data/data_sources/local/about_us_local_data_source.dart'
    as _i30;
import 'features/about_us/data/data_sources/local/about_us_local_data_source_imp.dart'
    as _i31;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source.dart'
    as _i32;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source_imp.dart'
    as _i33;
import 'features/about_us/data/repositories/about_us_repository_imp.dart'
    as _i72;
import 'features/about_us/domain/repositories/about_us_repository.dart' as _i71;
import 'features/about_us/presentation/bloc/about_us_bloc.dart' as _i3;
import 'features/details/data/data_sources/local/details_local_data_source.dart'
    as _i37;
import 'features/details/data/data_sources/local/details_local_data_source_imp.dart'
    as _i38;
import 'features/details/data/data_sources/remote/details_remote_data_source.dart'
    as _i39;
import 'features/details/data/data_sources/remote/details_remote_data_source_imp.dart'
    as _i40;
import 'features/details/data/repositories/details_repository_imp.dart' as _i42;
import 'features/details/domain/repositories/details_repository.dart' as _i41;
import 'features/details/presentation/bloc/details_bloc.dart' as _i4;
import 'features/form/data/data_sources/local/form_local_data_source.dart'
    as _i43;
import 'features/form/data/data_sources/local/form_local_data_source_imp.dart'
    as _i44;
import 'features/form/data/data_sources/remote/form_remote_data_source.dart'
    as _i6;
import 'features/form/data/data_sources/remote/form_remote_data_source_imp.dart'
    as _i7;
import 'features/form/data/repositories/form_repository_imp.dart' as _i46;
import 'features/form/domain/repositories/form_repository.dart' as _i45;
import 'features/form/domain/use_cases/store_help_id_use_case.dart' as _i69;
import 'features/form/domain/use_cases/submit_help_form_use_case.dart' as _i70;
import 'features/form/presentation/bloc/form_bloc.dart' as _i73;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source.dart'
    as _i47;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source_imp.dart'
    as _i48;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source.dart'
    as _i9;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source_imp.dart'
    as _i10;
import 'features/help_offers/data/repositories/help_offers_repository_imp.dart'
    as _i50;
import 'features/help_offers/domain/repositories/help_offers_repository.dart'
    as _i49;
import 'features/help_offers/presentation/bloc/help_offers_bloc.dart' as _i8;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source.dart'
    as _i51;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source_imp.dart'
    as _i52;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source.dart'
    as _i12;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source_imp.dart'
    as _i13;
import 'features/help_requests/data/repositories/help_requests_repository_imp.dart'
    as _i54;
import 'features/help_requests/domain/repositories/help_requests_repository.dart'
    as _i53;
import 'features/help_requests/presentation/bloc/help_requests_bloc.dart'
    as _i11;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source.dart'
    as _i55;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source_imp.dart'
    as _i56;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source.dart'
    as _i15;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source_imp.dart'
    as _i16;
import 'features/helpful_information/data/repositories/helpful_information_repository_imp.dart'
    as _i58;
import 'features/helpful_information/domain/repositories/helpful_information_repository.dart'
    as _i57;
import 'features/helpful_information/presentation/bloc/helpful_information_bloc.dart'
    as _i14;
import 'features/history/data/data_sources/local/history_local_data_source.dart'
    as _i59;
import 'features/history/data/data_sources/local/history_local_data_source_imp.dart'
    as _i60;
import 'features/history/data/data_sources/remote/history_remote_data_source.dart'
    as _i18;
import 'features/history/data/data_sources/remote/history_remote_data_source_imp.dart'
    as _i19;
import 'features/history/data/repositories/history_repository_imp.dart' as _i62;
import 'features/history/domain/repositories/history_repository.dart' as _i61;
import 'features/history/presentation/bloc/history_bloc.dart' as _i17;
import 'features/home/data/data_sources/local/home_local_data_source.dart'
    as _i63;
import 'features/home/data/data_sources/local/home_local_data_source_imp.dart'
    as _i64;
import 'features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i20;
import 'features/home/data/data_sources/remote/home_remote_data_source_imp.dart'
    as _i21;
import 'features/home/data/repositories/home_repository_imp.dart' as _i66;
import 'features/home/domain/repositories/home_repository.dart' as _i65;
import 'features/home/domain/use_cases/get_all_governorates_use_case.dart'
    as _i74;
import 'features/home/domain/use_cases/get_all_help_types_use_case.dart'
    as _i75;
import 'features/home/presentation/bloc/home_bloc.dart' as _i76;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i26;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i27;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i28;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i29;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i68;
import 'features/splash/domain/repositories/splash_repository.dart' as _i67;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i25;
import 'injection.dart' as _i77; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i8.HelpOffersBloc>(() => _i8.HelpOffersBloc());
  gh.lazySingleton<_i9.HelpOffersRemoteDataSource>(
      () => _i10.HelpOffersRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i11.HelpRequestsBloc>(() => _i11.HelpRequestsBloc());
  gh.lazySingleton<_i12.HelpRequestsRemoteDataSource>(
      () => _i13.HelpRequestsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i14.HelpfulInformationBloc>(() => _i14.HelpfulInformationBloc());
  gh.lazySingleton<_i15.HelpfulInformationRemoteDataSource>(
      () => _i16.HelpfulInformationRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i17.HistoryBloc>(() => _i17.HistoryBloc());
  gh.lazySingleton<_i18.HistoryRemoteDataSource>(
      () => _i19.HistoryRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i20.HomeRemoteDataSource>(
      () => _i21.HomeRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i22.NetworkInfo>(() => _i22.NetworkInfoImpl());
  await gh.factoryAsync<_i23.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i24.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i25.SplashBloc>(() => _i25.SplashBloc());
  gh.lazySingleton<_i26.SplashLocalDataSource>(() =>
      _i27.SplashLocalDataSourceImp(
          sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i28.SplashRemoteDataSource>(
      () => _i29.SplashRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i30.AboutUsLocalDataSource>(() =>
      _i31.AboutUsLocalDataSourceImp(
          sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i32.AboutUsRemoteDataSource>(
      () => _i33.AboutUsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i34.BaseLocalDataSource>(() => _i34.BaseLocalDataSourceImp(
      sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i35.BaseRemoteDataSource>(
      () => _i35.BaseRemoteDataSourceImpl(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i36.BaseRepository>(() => _i36.BaseRepositoryImpl(
        baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
        networkInfo: get<_i22.NetworkInfo>(),
      ));
  gh.lazySingleton<_i37.DetailsLocalDataSource>(() =>
      _i38.DetailsLocalDataSourceImp(
          sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i39.DetailsRemoteDataSource>(
      () => _i40.DetailsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i41.DetailsRepository>(() => _i42.DetailsRepositoryImp(
        get<_i37.DetailsLocalDataSource>(),
        get<_i39.DetailsRemoteDataSource>(),
        baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
        networkInfo: get<_i22.NetworkInfo>(),
      ));
  gh.lazySingleton<_i43.FormLocalDataSource>(() => _i44.FormLocalDataSourceImp(
      sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i45.FormRepository>(() => _i46.FormRepositoryImp(
        get<_i43.FormLocalDataSource>(),
        get<_i6.FormRemoteDataSource>(),
        baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
        networkInfo: get<_i22.NetworkInfo>(),
      ));
  gh.lazySingleton<_i47.HelpOffersLocalDataSource>(() =>
      _i48.HelpOffersLocalDataSourceImp(
          sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i49.HelpOffersRepository>(
      () => _i50.HelpOffersRepositoryImp(
            get<_i47.HelpOffersLocalDataSource>(),
            get<_i9.HelpOffersRemoteDataSource>(),
            baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
            networkInfo: get<_i22.NetworkInfo>(),
          ));
  gh.lazySingleton<_i51.HelpRequestsLocalDataSource>(() =>
      _i52.HelpRequestsLocalDataSourceImp(
          sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i53.HelpRequestsRepository>(
      () => _i54.HelpRequestsRepositoryImp(
            get<_i51.HelpRequestsLocalDataSource>(),
            get<_i12.HelpRequestsRemoteDataSource>(),
            baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
            networkInfo: get<_i22.NetworkInfo>(),
          ));
  gh.lazySingleton<_i55.HelpfulInformationLocalDataSource>(() =>
      _i56.HelpfulInformationLocalDataSourceImp(
          sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i57.HelpfulInformationRepository>(
      () => _i58.HelpfulInformationRepositoryImp(
            get<_i55.HelpfulInformationLocalDataSource>(),
            get<_i15.HelpfulInformationRemoteDataSource>(),
            baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
            networkInfo: get<_i22.NetworkInfo>(),
          ));
  gh.lazySingleton<_i59.HistoryLocalDataSource>(() =>
      _i60.HistoryLocalDataSourceImp(
          sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i61.HistoryRepository>(() => _i62.HistoryRepositoryImp(
        get<_i59.HistoryLocalDataSource>(),
        get<_i18.HistoryRemoteDataSource>(),
        baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
        networkInfo: get<_i22.NetworkInfo>(),
      ));
  gh.lazySingleton<_i63.HomeLocalDataSource>(() => _i64.HomeLocalDataSourceImp(
      sharedPreferences: get<_i24.SharedPreferences>()));
  gh.lazySingleton<_i65.HomeRepository>(() => _i66.HomeRepositoryImp(
        get<_i63.HomeLocalDataSource>(),
        get<_i20.HomeRemoteDataSource>(),
        baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
        networkInfo: get<_i22.NetworkInfo>(),
      ));
  gh.lazySingleton<_i67.SplashRepository>(() => _i68.SplashRepositoryImp(
        get<_i26.SplashLocalDataSource>(),
        get<_i28.SplashRemoteDataSource>(),
        baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
        networkInfo: get<_i22.NetworkInfo>(),
      ));
  gh.lazySingleton<_i69.StoreHelpIdUseCase>(
      () => _i69.StoreHelpIdUseCase(get<_i45.FormRepository>()));
  gh.lazySingleton<_i70.SubmitHelpFormUseCase>(
      () => _i70.SubmitHelpFormUseCase(get<_i45.FormRepository>()));
  gh.lazySingleton<_i71.AboutUsRepository>(() => _i72.AboutUsRepositoryImp(
        get<_i30.AboutUsLocalDataSource>(),
        get<_i32.AboutUsRemoteDataSource>(),
        baseLocalDataSource: get<_i34.BaseLocalDataSource>(),
        networkInfo: get<_i22.NetworkInfo>(),
      ));
  gh.factory<_i73.FormBloc>(() => _i73.FormBloc(
        get<_i70.SubmitHelpFormUseCase>(),
        get<_i69.StoreHelpIdUseCase>(),
      ));
  gh.lazySingleton<_i74.GetAllGovernoratesUseCase>(
      () => _i74.GetAllGovernoratesUseCase(get<_i65.HomeRepository>()));
  gh.lazySingleton<_i75.GetAllHelpTypesUseCase>(
      () => _i75.GetAllHelpTypesUseCase(get<_i65.HomeRepository>()));
  gh.lazySingleton<_i76.HomeBloc>(() => _i76.HomeBloc(
        get<_i74.GetAllGovernoratesUseCase>(),
        get<_i75.GetAllHelpTypesUseCase>(),
      ));
  return get;
}

class _$RegisterModule extends _i77.RegisterModule {}
