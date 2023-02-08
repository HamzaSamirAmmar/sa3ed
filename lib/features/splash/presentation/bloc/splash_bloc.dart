import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'splash_event.dart';
import 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  void clearMessage() {
    add(ClearMessage());
  }

  void reInitState() {
    add(ReInitState());
  }

  @factoryMethod
  SplashBloc() : super(SplashState.initial()) {
    on<SplashEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(SplashState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(SplashState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
