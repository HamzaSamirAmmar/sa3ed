import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';

part 'help_offers_state.g.dart';

abstract class HelpOffersState
    with BaseState
    implements Built<HelpOffersState, HelpOffersStateBuilder> {
  HelpOffersState._();

  factory HelpOffersState([Function(HelpOffersStateBuilder b) updates]) =
      _$HelpOffersState;

  factory HelpOffersState.initial() {
    return HelpOffersState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory HelpOffersState.failure({
    required String message,
    required HelpOffersState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory HelpOffersState.success({
    required String message,
    required HelpOffersState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory HelpOffersState.clearMessage({
    required HelpOffersState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
