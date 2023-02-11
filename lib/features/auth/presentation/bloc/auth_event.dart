import 'package:built_value/built_value.dart';

part 'auth_event.g.dart';

abstract class AuthEvent {}

abstract class ClearMessage extends AuthEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class SendAuthData extends AuthEvent
    implements Built<SendAuthData, SendAuthDataBuilder> {
  SendAuthData._();

  String get name;

  String get password;

  bool get isLogin;

  factory SendAuthData([Function(SendAuthDataBuilder b) updates]) =
      _$SendAuthData;

  factory SendAuthData.initial() {
    return SendAuthData((b) => b);
  }
}

abstract class ReInitState extends AuthEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}
