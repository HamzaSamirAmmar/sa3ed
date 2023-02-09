import 'package:built_value/built_value.dart';

part 'history_event.g.dart';

abstract class HistoryEvent {}

abstract class ClearMessage extends HistoryEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class DeleteHelp extends HistoryEvent
    implements Built<DeleteHelp, DeleteHelpBuilder> {
  DeleteHelp._();

  int get id;

  bool get isOffer;

  factory DeleteHelp([Function(DeleteHelpBuilder b) updates]) = _$DeleteHelp;

  factory DeleteHelp.initial() {
    return DeleteHelp((b) => b);
  }
}

abstract class GetHelpHistory extends HistoryEvent
    implements Built<GetHelpHistory, GetHelpHistoryBuilder> {
  GetHelpHistory._();

  factory GetHelpHistory([Function(GetHelpHistoryBuilder b) updates]) =
      _$GetHelpHistory;

  factory GetHelpHistory.initial() {
    return GetHelpHistory((b) => b);
  }
}

abstract class ReInitState extends HistoryEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}
