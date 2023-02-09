import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';
import '../../../../core/entities/help.dart';

part 'history_state.g.dart';

abstract class HistoryState
    with BaseState
    implements Built<HistoryState, HistoryStateBuilder> {
  HistoryState._();

  BuiltList<Help> get helps;

  factory HistoryState([Function(HistoryStateBuilder b) updates]) =
      _$HistoryState;

  factory HistoryState.initial() {
    return HistoryState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..helps.replace([]),
    );
  }

  factory HistoryState.failure({
    required String message,
    required HistoryState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory HistoryState.success({
    required String message,
    required HistoryState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory HistoryState.clearMessage({
    required HistoryState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
