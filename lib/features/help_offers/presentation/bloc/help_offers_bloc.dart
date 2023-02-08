import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'help_offers_event.dart';
import 'help_offers_state.dart';

@injectable
class HelpOffersBloc extends Bloc<HelpOffersEvent, HelpOffersState> {
  void clearMessage() {
    add(ClearMessage());
  }

  void reInitState() {
    add(ReInitState());
  }

  @factoryMethod
  HelpOffersBloc() : super(HelpOffersState.initial()) {
    on<HelpOffersEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(HelpOffersState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(HelpOffersState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
