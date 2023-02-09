import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';
import '../../domain/entities/helpful_information.dart';

part 'helpful_information_state.g.dart';

abstract class HelpfulInformationState
    with BaseState
    implements Built<HelpfulInformationState, HelpfulInformationStateBuilder> {
  HelpfulInformationState._();

  HelpfulInformation? get info;

  factory HelpfulInformationState(
          [Function(HelpfulInformationStateBuilder b) updates]) =
      _$HelpfulInformationState;

  factory HelpfulInformationState.initial() {
    return HelpfulInformationState(
      (b) => b
        ..isLoading = false
        ..message = ''
        ..error = false,
    );
  }

  factory HelpfulInformationState.failure({
    required String message,
    required HelpfulInformationState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory HelpfulInformationState.success({
    required String message,
    required HelpfulInformationState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory HelpfulInformationState.clearMessage({
    required HelpfulInformationState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
