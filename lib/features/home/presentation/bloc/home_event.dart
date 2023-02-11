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

abstract class Logout extends HomeEvent
    implements Built<Logout, LogoutBuilder> {
  Logout._();

  factory Logout([Function(LogoutBuilder b) updates]) =
      _$Logout;

  factory Logout.initial() {
    return Logout((b) => b);
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

abstract class GetAllHelpTypes extends HomeEvent
    implements Built<GetAllHelpTypes, GetAllHelpTypesBuilder> {
  GetAllHelpTypes._();

  factory GetAllHelpTypes([Function(GetAllHelpTypesBuilder b) updates]) =
      _$GetAllHelpTypes;

  factory GetAllHelpTypes.initial() {
    return GetAllHelpTypes((b) => b);
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
