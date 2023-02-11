import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/use_cases/get_all_governorates_use_case.dart';
import '../../domain/use_cases/get_all_help_types_use_case.dart';
import '../../domain/use_cases/logout_use_case.dart';
import 'home_event.dart';
import 'home_state.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllGovernoratesUseCase _getAllGovernoratesUseCase;
  final GetAllHelpTypesUseCase _getAllHelpTypesUseCase;
  final LogoutUseCase _logoutUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void reInitState({
    Function? onStateReInitialized,
  }) {
    add(ReInitState(
      (b) => b..onStateReInitialized = onStateReInitialized,
    ));
  }

  void addGetAllGovernoratesEvent() {
    add(GetAllGovernorates());
  }

  void addGetAllHelpTypesEvent() {
    add(GetAllHelpTypes());
  }

  void addLogoutEvent() {
    add(Logout());
  }

  @factoryMethod
  HomeBloc(
    this._getAllGovernoratesUseCase,
    this._getAllHelpTypesUseCase,
    this._logoutUseCase,
  ) : super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(HomeState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(HomeState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }

        /*** Logout **/
        if (event is Logout) {
          final result = await _logoutUseCase(NoParams());

          result.fold(
            (failure) => emit(
              HomeState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..isUnauthorized = true,
              ),
            ),
          );
        }

        /*** GetAllGovernorates **/
        if (event is GetAllGovernorates) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getAllGovernoratesUseCase(NoParams());

          result.fold(
            (failure) {
              emit(
                HomeState.failure(
                  message: failure.error,
                  currentState: state,
                ),
              );
              Future.delayed(const Duration(seconds: 3)).whenComplete(
                () => addGetAllGovernoratesEvent(),
              );
            },
            (governorates) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..governorates.replace(governorates),
              ),
            ),
          );
        }

        /*** GetAllHelpTypes **/
        if (event is GetAllHelpTypes) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getAllHelpTypesUseCase(NoParams());

          result.fold(
            (failure) {
              emit(
                HomeState.failure(
                  message: failure.error,
                  currentState: state,
                ),
              );
              Future.delayed(const Duration(seconds: 3)).whenComplete(
                () => addGetAllHelpTypesEvent(),
              );
            },
            (helpTypes) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..helpTypes.replace(helpTypes),
              ),
            ),
          );
        }
      },
    );
  }
}
