import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';
import '../../../../core/entities/help.dart';

part 'details_state.g.dart';

abstract class DetailsState
    with BaseState
    implements Built<DetailsState, DetailsStateBuilder> {
  DetailsState._();

  Help? get help;

  factory DetailsState([Function(DetailsStateBuilder b) updates]) =
      _$DetailsState;

  factory DetailsState.initial() {
    return DetailsState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory DetailsState.failure({
    required String message,
    required DetailsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory DetailsState.success({
    required String message,
    required DetailsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory DetailsState.clearMessage({
    required DetailsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
