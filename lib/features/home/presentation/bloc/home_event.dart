import 'package:built_value/built_value.dart';

part 'home_event.g.dart';

abstract class HomeEvent {}

abstract class ClearMessage extends HomeEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class GetAllGovernorates extends HomeEvent
    implements Built<GetAllGovernorates, GetAllGovernoratesBuilder> {
  GetAllGovernorates._();

  factory GetAllGovernorates([Function(GetAllGovernoratesBuilder b) updates]) =
      _$GetAllGovernorates;

  factory GetAllGovernorates.initial() {
    return GetAllGovernorates((b) => b);
  }
}

abstract class ReInitState extends HomeEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}
