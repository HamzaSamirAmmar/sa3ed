import 'package:built_value/built_value.dart';

part 'about_us_event.g.dart';

abstract class AboutUsEvent {}

abstract class ClearMessage extends AboutUsEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class GetAboutUs extends AboutUsEvent
    implements Built<GetAboutUs, GetAboutUsBuilder> {
  GetAboutUs._();

  factory GetAboutUs([Function(GetAboutUsBuilder b) updates]) = _$GetAboutUs;

  factory GetAboutUs.initial() {
    return GetAboutUs((b) => b);
  }
}

abstract class ReInitState extends AboutUsEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}
