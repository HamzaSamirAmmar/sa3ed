import 'package:built_value/built_value.dart';

import '../../data/models/help_form_model.dart';

part 'form_event.g.dart';

abstract class FormEvent {}

abstract class ClearMessage extends FormEvent
    implements Built<ClearMessage, ClearMessageBuilder> {
  ClearMessage._();

  factory ClearMessage([Function(ClearMessageBuilder b) updates]) =
      _$ClearMessage;

  factory ClearMessage.initial() {
    return ClearMessage((b) => b);
  }
}

abstract class SubmitHelpForm extends FormEvent
    implements Built<SubmitHelpForm, SubmitHelpFormBuilder> {
  SubmitHelpForm._();

  HelpFormModel get form;

  bool get isOffer;

  factory SubmitHelpForm([Function(SubmitHelpFormBuilder b) updates]) =
      _$SubmitHelpForm;

  factory SubmitHelpForm.initial() {
    return SubmitHelpForm((b) => b);
  }
}

abstract class ReInitState extends FormEvent
    implements Built<ReInitState, ReInitStateBuilder> {
  ReInitState._();

  Function? get onStateReInitialized;

  factory ReInitState([Function(ReInitStateBuilder b) updates]) = _$ReInitState;

  factory ReInitState.initial() {
    return ReInitState((b) => b);
  }
}
