import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'helpful_information_event.dart';
import 'helpful_information_state.dart';

@injectable
class HelpfulInformationBloc
    extends Bloc<HelpfulInformationEvent, HelpfulInformationState> {
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
  HelpfulInformationBloc() : super(HelpfulInformationState.initial()) {
    on<HelpfulInformationEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(HelpfulInformationState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(HelpfulInformationState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
