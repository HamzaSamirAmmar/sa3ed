import 'package:built_value/built_value.dart';

part 'details_event.g.dart';

abstract class DetailsEvent {}

abstract class ClearMessage extends DetailsEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class ReInitState extends DetailsEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}

abstract class GetHelp extends DetailsEvent
    implements Built<GetHelp, GetHelpBuilder> {
  GetHelp._();

  int get id;

  bool get isOffer;

  factory GetHelp([Function(GetHelpBuilder b) updates]) = _$GetHelp;

  factory GetHelp.initial() {
    return GetHelp((b) => b);
  }
}
