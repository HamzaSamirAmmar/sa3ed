import 'package:built_value/built_value.dart';

part 'splash_event.g.dart';

abstract class SplashEvent {}

abstract class ClearMessage extends SplashEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
  _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class CheckVersion extends SplashEvent
    implements Built<CheckVersion, CheckVersionBuilder> {
  CheckVersion._();

  factory CheckVersion([Function(CheckVersionBuilder b) updates]) =
      _$CheckVersion;

  factory CheckVersion.initial() {
    return CheckVersion((b) => b);
  }
}

abstract class ReInitState extends SplashEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}
