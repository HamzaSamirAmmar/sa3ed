import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';

part 'about_us_state.g.dart';

abstract class AboutUsState
    with BaseState
    implements Built<AboutUsState, AboutUsStateBuilder> {
  AboutUsState._();

  factory AboutUsState([Function(AboutUsStateBuilder b) updates]) =
      _$AboutUsState;

  factory AboutUsState.initial() {
    return AboutUsState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory AboutUsState.failure({
    required String message,
    required AboutUsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory AboutUsState.success({
    required String message,
    required AboutUsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory AboutUsState.clearMessage({
    required AboutUsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
