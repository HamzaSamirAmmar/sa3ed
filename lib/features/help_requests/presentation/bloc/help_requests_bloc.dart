import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'help_requests_event.dart';
import 'help_requests_state.dart';

@injectable
class HelpRequestsBloc extends Bloc<HelpRequestsEvent, HelpRequestsState> {
  void clearMessage() {
    add(ClearMessage());
  }

  void reInitState() {
    add(ReInitState());
  }

  @factoryMethod
  HelpRequestsBloc() : super(HelpRequestsState.initial()) {
    on<HelpRequestsEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(HelpRequestsState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(HelpRequestsState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
