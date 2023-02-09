import 'package:built_value/built_value.dart';

part 'help_requests_event.g.dart';

abstract class HelpRequestsEvent {}

abstract class ClearMessage extends HelpRequestsEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class ReInitState extends HelpRequestsEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}

abstract class GetAllHelpRequests extends HelpRequestsEvent
    implements Built<GetAllHelpRequests, GetAllHelpRequestsBuilder> {
  GetAllHelpRequests._();

  int? get governorateId;

  int? get cityId;

  int? get helpType;

  int get page;

  factory GetAllHelpRequests([Function(GetAllHelpRequestsBuilder b) updates]) =
      _$GetAllHelpRequests;

  factory GetAllHelpRequests.initial() {
    return GetAllHelpRequests((b) => b);
  }
}
