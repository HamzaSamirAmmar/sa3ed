import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import "package:package_info_plus/package_info_plus.dart";

import '../../../../core/usecases/usecase.dart';
import '../../domain/use_cases/check_version_use_case.dart';
import 'splash_event.dart';
import 'splash_state.dart';

@lazySingleton
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final PackageInfo _packageInfo;
  final CheckVersionUseCase _checkVersionUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addCheckVersionEvent() {
    add(CheckVersion());
  }

  void reInitState({
    Function? onStateReInitialized,
  }) {
    add(ReInitState(
      (b) => b..onStateReInitialized = onStateReInitialized,
    ));
  }

  @factoryMethod
  SplashBloc(
    this._packageInfo,
    this._checkVersionUseCase,
  ) : super(SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(SplashState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(SplashState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }

        /*** CheckVersion **/
        if (event is CheckVersion) {
          final result = await _checkVersionUseCase(
            NoParams(),
          );

          result.fold(
            (failure) => emit(
              SplashState.failure(message: failure.error, currentState: state),
            ),
            (version) {
              final String currentVersion = _packageInfo.version;
              if (currentVersion != version.version) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..apkUrl = version.apkUrl
                      ..baseUrl = version.baseUrl,
                  ),
                );
              } else {
                emit(
                  state.rebuild(
                    (b) => b..baseUrl = version.baseUrl,
                  ),
                );
              }
            },
          );
        }
      },
    );
  }
}
