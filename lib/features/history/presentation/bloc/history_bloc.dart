import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'history_event.dart';
import 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
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
  HistoryBloc() : super(HistoryState.initial()) {
    on<HistoryEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(HistoryState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(HistoryState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
