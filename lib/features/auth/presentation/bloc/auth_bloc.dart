import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/send_auth_data_use_case.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SendAuthDataUseCase _sendAuthDataUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addSendAuthDataEvent({
    required String name,
    required String password,
    required bool isLogin,
  }) {
    add(SendAuthData(
      (b) => b
        ..name = name
        ..password = password
        ..isLogin = isLogin,
    ));
  }

  void reInitState({
    Function? onStateReInitialized,
  }) {
    add(ReInitState(
      (b) => b..onStateReInitialized = onStateReInitialized,
    ));
  }

  @factoryMethod
  AuthBloc(
    this._sendAuthDataUseCase,
  ) : super(AuthState.initial()) {
    on<AuthEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(AuthState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(AuthState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }

        /*** sendAuthData **/
        if (event is SendAuthData) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _sendAuthDataUseCase(
            ParamsSendAuthDataUseCase(
              name: event.name,
              password: event.password,
              isLogin: event.isLogin,
            ),
          );

          result.fold(
            (failure) => emit(
              AuthState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b..allSuccess = true,
              ),
            ),
          );
        }
      },
    );
  }
}
