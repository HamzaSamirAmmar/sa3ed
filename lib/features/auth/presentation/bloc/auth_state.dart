import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';

part 'auth_state.g.dart';

abstract class AuthState
    with BaseState
    implements Built<AuthState, AuthStateBuilder> {
  AuthState._();

  bool get allSuccess;

  factory AuthState([Function(AuthStateBuilder b) updates]) = _$AuthState;

  factory AuthState.initial() {
    return AuthState(
      (b) => b
        ..allSuccess = false
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory AuthState.failure({
    required String message,
    required AuthState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory AuthState.success({
    required String message,
    required AuthState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory AuthState.clearMessage({
    required AuthState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
