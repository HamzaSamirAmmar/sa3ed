import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

import '../../../../core/bloc/base_state.dart';
import '../../domain/entities/governorate.dart';
import '../../domain/entities/help_type.dart';

part 'home_state.g.dart';

abstract class HomeState
    with BaseState
    implements Built<HomeState, HomeStateBuilder> {
  HomeState._();

  BuiltList<Governorate> get governorates;

  BuiltList<HelpType> get helpTypes;

  bool get isUnauthorized;

  factory HomeState([Function(HomeStateBuilder b) updates]) = _$HomeState;

  factory HomeState.initial() {
    return HomeState(
      (b) => b
        ..isUnauthorized = false
        ..isLoading = false
        ..message = ''
        ..error = false
        ..governorates.replace([])
        ..helpTypes.replace([]),
    );
  }

  factory HomeState.failure({
    required String message,
    required HomeState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = true
        ..message = message,
    );
  }

  factory HomeState.success({
    required String message,
    required HomeState currentState,
  }) {
    return currentState.rebuild(
      (b) => b
        ..isLoading = false
        ..error = false
        ..message = message,
    );
  }

  factory HomeState.clearMessage({
    required HomeState currentState,
  }) {
    return currentState.rebuild(
      (b) => b..message = '',
    );
  }
}
