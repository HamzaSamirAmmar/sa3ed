import 'package:built_value/built_value.dart';

part 'helpful_information_event.g.dart';

abstract class HelpfulInformationEvent {}

abstract class ClearMessage extends HelpfulInformationEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class GetHelpfulInformation extends HelpfulInformationEvent
    implements Built<GetHelpfulInformation, GetHelpfulInformationBuilder> {
  GetHelpfulInformation._();

  factory GetHelpfulInformation([Function(GetHelpfulInformationBuilder b) updates]) =
      _$GetHelpfulInformation;

  factory GetHelpfulInformation.initial() {
    return GetHelpfulInformation((b) => b);
  }
}

abstract class ReInitState extends HelpfulInformationEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}
