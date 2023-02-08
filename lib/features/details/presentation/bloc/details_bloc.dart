import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'details_event.dart';
import 'details_state.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  void clearMessage() {
    add(ClearMessage());
  }

  void reInitState() {
    add(ReInitState());
  }

  @factoryMethod
  DetailsBloc() : super(DetailsState.initial()) {
    on<DetailsEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(DetailsState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(DetailsState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
