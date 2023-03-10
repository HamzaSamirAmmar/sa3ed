import 'package:built_value/built_value.dart';

part 'help_offers_event.g.dart';

abstract class HelpOffersEvent {}

abstract class ClearMessage extends HelpOffersEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class ReInitState extends HelpOffersEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}

abstract class GetAllHelpOffers extends HelpOffersEvent
    implements Built<GetAllHelpOffers, GetAllHelpOffersBuilder> {
  GetAllHelpOffers._();

  int? get governorateId;

  int? get cityId;

  int? get helpType;

  int get page;

  factory GetAllHelpOffers([Function(GetAllHelpOffersBuilder b) updates]) =
      _$GetAllHelpOffers;

  factory GetAllHelpOffers.initial() {
    return GetAllHelpOffers((b) => b);
  }
}
