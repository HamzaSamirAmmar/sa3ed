import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';

part 'form_state.g.dart';

abstract class FormState
    with BaseState
    implements Built<FormState, FormStateBuilder> {
  FormState._();

  bool get allSuccess;

  factory FormState([Function(FormStateBuilder b) updates]) = _$FormState;

  factory FormState.initial() {
    return FormState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..allSuccess = false,
    );
  }

  factory FormState.failure({
    required String message,
    required FormState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory FormState.success({
    required String message,
    required FormState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..allSuccess = true
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory FormState.clearMessage({
    required FormState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
