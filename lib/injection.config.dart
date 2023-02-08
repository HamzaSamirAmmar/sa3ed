// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info_plus/package_info_plus.dart' as _i25;
import 'package:shared_preferences/shared_preferences.dart' as _i26;

import 'core/data/base_local_data_source.dart' as _i37;
import 'core/data/base_remote_data_source.dart' as _i38;
import 'core/data/base_repository.dart' as _i39;
import 'core/data/web_local_storage.dart' as _i32;
import 'core/network/network_info.dart' as _i24;
import 'features/about_us/data/data_sources/local/about_us_local_data_source.dart'
    as _i33;
import 'features/about_us/data/data_sources/local/about_us_local_data_source_imp.dart'
    as _i34;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source.dart'
    as _i35;
import 'features/about_us/data/data_sources/remote/about_us_remote_data_source_imp.dart'
    as _i36;
import 'features/about_us/data/repositories/about_us_repository_imp.dart'
    as _i73;
import 'features/about_us/domain/repositories/about_us_repository.dart' as _i72;
import 'features/about_us/presentation/bloc/about_us_bloc.dart' as _i3;
import 'features/details/data/data_sources/local/details_local_data_source.dart'
    as _i40;
import 'features/details/data/data_sources/local/details_local_data_source_imp.dart'
    as _i41;
import 'features/details/data/data_sources/remote/details_remote_data_source.dart'
    as _i42;
import 'features/details/data/data_sources/remote/details_remote_data_source_imp.dart'
    as _i43;
import 'features/details/data/repositories/details_repository_imp.dart' as _i45;
import 'features/details/domain/repositories/details_repository.dart' as _i44;
import 'features/details/presentation/bloc/details_bloc.dart' as _i4;
import 'features/form/data/data_sources/local/form_local_data_source.dart'
    as _i46;
import 'features/form/data/data_sources/local/form_local_data_source_imp.dart'
    as _i47;
import 'features/form/data/data_sources/remote/form_remote_data_source.dart'
    as _i7;
import 'features/form/data/data_sources/remote/form_remote_data_source_imp.dart'
    as _i8;
import 'features/form/data/repositories/form_repository_imp.dart' as _i49;
import 'features/form/domain/repositories/form_repository.dart' as _i48;
import 'features/form/presentation/bloc/form_bloc.dart' as _i6;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source.dart'
    as _i50;
import 'features/help_offers/data/data_sources/local/help_offers_local_data_source_imp.dart'
    as _i51;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source.dart'
    as _i10;
import 'features/help_offers/data/data_sources/remote/help_offers_remote_data_source_imp.dart'
    as _i11;
import 'features/help_offers/data/repositories/help_offers_repository_imp.dart'
    as _i53;
import 'features/help_offers/domain/repositories/help_offers_repository.dart'
    as _i52;
import 'features/help_offers/presentation/bloc/help_offers_bloc.dart' as _i9;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source.dart'
    as _i54;
import 'features/help_requests/data/data_sources/local/help_requests_local_data_source_imp.dart'
    as _i55;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source.dart'
    as _i13;
import 'features/help_requests/data/data_sources/remote/help_requests_remote_data_source_imp.dart'
    as _i14;
import 'features/help_requests/data/repositories/help_requests_repository_imp.dart'
    as _i57;
import 'features/help_requests/domain/repositories/help_requests_repository.dart'
    as _i56;
import 'features/help_requests/presentation/bloc/help_requests_bloc.dart'
    as _i12;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source.dart'
    as _i58;
import 'features/helpful_information/data/data_sources/local/helpful_information_local_data_source_imp.dart'
    as _i59;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source.dart'
    as _i16;
import 'features/helpful_information/data/data_sources/remote/helpful_information_remote_data_source_imp.dart'
    as _i17;
import 'features/helpful_information/data/repositories/helpful_information_repository_imp.dart'
    as _i61;
import 'features/helpful_information/domain/repositories/helpful_information_repository.dart'
    as _i60;
import 'features/helpful_information/presentation/bloc/helpful_information_bloc.dart'
    as _i15;
import 'features/history/data/data_sources/local/history_local_data_source.dart'
    as _i62;
import 'features/history/data/data_sources/local/history_local_data_source_imp.dart'
    as _i63;
import 'features/history/data/data_sources/remote/history_remote_data_source.dart'
    as _i19;
import 'features/history/data/data_sources/remote/history_remote_data_source_imp.dart'
    as _i20;
import 'features/history/data/repositories/history_repository_imp.dart' as _i65;
import 'features/history/domain/repositories/history_repository.dart' as _i64;
import 'features/history/presentation/bloc/history_bloc.dart' as _i18;
import 'features/home/data/data_sources/local/home_local_data_source.dart'
    as _i66;
import 'features/home/data/data_sources/local/home_local_data_source_imp.dart'
    as _i67;
import 'features/home/data/data_sources/remote/home_remote_data_source.dart'
    as _i22;
import 'features/home/data/data_sources/remote/home_remote_data_source_imp.dart'
    as _i23;
import 'features/home/data/repositories/home_repository_imp.dart' as _i69;
import 'features/home/domain/repositories/home_repository.dart' as _i68;
import 'features/home/presentation/bloc/home_bloc.dart' as _i21;
import 'features/splash/data/data_sources/local/splash_local_data_source.dart'
    as _i28;
import 'features/splash/data/data_sources/local/splash_local_data_source_imp.dart'
    as _i29;
import 'features/splash/data/data_sources/remote/splash_remote_data_source.dart'
    as _i30;
import 'features/splash/data/data_sources/remote/splash_remote_data_source_imp.dart'
    as _i31;
import 'features/splash/data/repositories/splash_repository_imp.dart' as _i71;
import 'features/splash/domain/repositories/splash_repository.dart' as _i70;
import 'features/splash/presentation/bloc/splash_bloc.dart' as _i27;
import 'injection.dart' as _i74; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.FormBloc>(() => _i6.FormBloc());
  gh.lazySingleton<_i7.FormRemoteDataSource>(
      () => _i8.FormRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i9.HelpOffersBloc>(() => _i9.HelpOffersBloc());
  gh.lazySingleton<_i10.HelpOffersRemoteDataSource>(
      () => _i11.HelpOffersRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i12.HelpRequestsBloc>(() => _i12.HelpRequestsBloc());
  gh.lazySingleton<_i13.HelpRequestsRemoteDataSource>(
      () => _i14.HelpRequestsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i15.HelpfulInformationBloc>(() => _i15.HelpfulInformationBloc());
  gh.lazySingleton<_i16.HelpfulInformationRemoteDataSource>(
      () => _i17.HelpfulInformationRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i18.HistoryBloc>(() => _i18.HistoryBloc());
  gh.lazySingleton<_i19.HistoryRemoteDataSource>(
      () => _i20.HistoryRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.factory<_i21.HomeBloc>(() => _i21.HomeBloc());
  gh.lazySingleton<_i22.HomeRemoteDataSource>(
      () => _i23.HomeRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i24.NetworkInfo>(() => _i24.NetworkInfoImpl());
  await gh.factoryAsync<_i25.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i26.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i27.SplashBloc>(() => _i27.SplashBloc());
  gh.lazySingleton<_i28.SplashLocalDataSource>(() =>
      _i29.SplashLocalDataSourceImp(
          sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i30.SplashRemoteDataSource>(
      () => _i31.SplashRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i32.WebLocalStorage>(() => _i32.WebLocalStorage());
  gh.lazySingleton<_i33.AboutUsLocalDataSource>(() =>
      _i34.AboutUsLocalDataSourceImp(
          sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i35.AboutUsRemoteDataSource>(
      () => _i36.AboutUsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i37.BaseLocalDataSource>(() => _i37.BaseLocalDataSourceImp(
      sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i38.BaseRemoteDataSource>(
      () => _i38.BaseRemoteDataSourceImpl(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i39.BaseRepository>(() => _i39.BaseRepositoryImpl(
        baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
        networkInfo: get<_i24.NetworkInfo>(),
      ));
  gh.lazySingleton<_i40.DetailsLocalDataSource>(() =>
      _i41.DetailsLocalDataSourceImp(
          sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i42.DetailsRemoteDataSource>(
      () => _i43.DetailsRemoteDataSourceImp(dio: get<_i5.Dio>()));
  gh.lazySingleton<_i44.DetailsRepository>(() => _i45.DetailsRepositoryImp(
        get<_i40.DetailsLocalDataSource>(),
        get<_i42.DetailsRemoteDataSource>(),
        baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
        networkInfo: get<_i24.NetworkInfo>(),
      ));
  gh.lazySingleton<_i46.FormLocalDataSource>(() => _i47.FormLocalDataSourceImp(
      sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i48.FormRepository>(() => _i49.FormRepositoryImp(
        get<_i46.FormLocalDataSource>(),
        get<_i7.FormRemoteDataSource>(),
        baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
        networkInfo: get<_i24.NetworkInfo>(),
      ));
  gh.lazySingleton<_i50.HelpOffersLocalDataSource>(() =>
      _i51.HelpOffersLocalDataSourceImp(
          sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i52.HelpOffersRepository>(
      () => _i53.HelpOffersRepositoryImp(
            get<_i50.HelpOffersLocalDataSource>(),
            get<_i10.HelpOffersRemoteDataSource>(),
            baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
            networkInfo: get<_i24.NetworkInfo>(),
          ));
  gh.lazySingleton<_i54.HelpRequestsLocalDataSource>(() =>
      _i55.HelpRequestsLocalDataSourceImp(
          sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i56.HelpRequestsRepository>(
      () => _i57.HelpRequestsRepositoryImp(
            get<_i54.HelpRequestsLocalDataSource>(),
            get<_i13.HelpRequestsRemoteDataSource>(),
            baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
            networkInfo: get<_i24.NetworkInfo>(),
          ));
  gh.lazySingleton<_i58.HelpfulInformationLocalDataSource>(() =>
      _i59.HelpfulInformationLocalDataSourceImp(
          sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i60.HelpfulInformationRepository>(
      () => _i61.HelpfulInformationRepositoryImp(
            get<_i58.HelpfulInformationLocalDataSource>(),
            get<_i16.HelpfulInformationRemoteDataSource>(),
            baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
            networkInfo: get<_i24.NetworkInfo>(),
          ));
  gh.lazySingleton<_i62.HistoryLocalDataSource>(() =>
      _i63.HistoryLocalDataSourceImp(
          sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i64.HistoryRepository>(() => _i65.HistoryRepositoryImp(
        get<_i62.HistoryLocalDataSource>(),
        get<_i19.HistoryRemoteDataSource>(),
        baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
        networkInfo: get<_i24.NetworkInfo>(),
      ));
  gh.lazySingleton<_i66.HomeLocalDataSource>(() => _i67.HomeLocalDataSourceImp(
      sharedPreferences: get<_i26.SharedPreferences>()));
  gh.lazySingleton<_i68.HomeRepository>(() => _i69.HomeRepositoryImp(
        get<_i66.HomeLocalDataSource>(),
        get<_i22.HomeRemoteDataSource>(),
        baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
        networkInfo: get<_i24.NetworkInfo>(),
      ));
  gh.lazySingleton<_i70.SplashRepository>(() => _i71.SplashRepositoryImp(
        get<_i28.SplashLocalDataSource>(),
        get<_i30.SplashRemoteDataSource>(),
        baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
        networkInfo: get<_i24.NetworkInfo>(),
      ));
  gh.lazySingleton<_i72.AboutUsRepository>(() => _i73.AboutUsRepositoryImp(
        get<_i33.AboutUsLocalDataSource>(),
        get<_i35.AboutUsRemoteDataSource>(),
        baseLocalDataSource: get<_i37.BaseLocalDataSource>(),
        networkInfo: get<_i24.NetworkInfo>(),
      ));
  return get;
}

class _$RegisterModule extends _i74.RegisterModule {}
