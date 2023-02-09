import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';
import '../../../../core/entities/pagination_state_data.dart';
import '../../../../core/entities/summary_help.dart';

part 'help_requests_state.g.dart';

abstract class HelpRequestsState
    with BaseState
    implements Built<HelpRequestsState, HelpRequestsStateBuilder> {
  HelpRequestsState._();

  PaginationStateData<SummaryHelp> get helpRequests;

  factory HelpRequestsState([Function(HelpRequestsStateBuilder b) updates]) =
      _$HelpRequestsState;

  factory HelpRequestsState.initial() {
    return HelpRequestsState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false
        ..helpRequests
            .replace(PaginationStateData<SummaryHelp>.initial()),
    );
  }

  factory HelpRequestsState.failure({
    required String message,
    required HelpRequestsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory HelpRequestsState.success({
    required String message,
    required HelpRequestsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory HelpRequestsState.clearMessage({
    required HelpRequestsState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
