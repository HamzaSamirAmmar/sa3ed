import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'form_event.dart';
import 'form_state.dart';

@injectable
class FormBloc extends Bloc<FormEvent, FormState> {
  void clearMessage() {
    add(ClearMessage());
  }

  void reInitState({
    Function? onStateReInitialized,
  }) {
    add(ReInitState(
          (b) => b..onStateReInitialized = onStateReInitialized,
    ));
  }
  @factoryMethod
  FormBloc() : super(FormState.initial()) {
    on<FormEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(FormState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(FormState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
