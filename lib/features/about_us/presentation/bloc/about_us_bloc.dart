import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'about_us_event.dart';
import 'about_us_state.dart';

@injectable
class AboutUsBloc extends Bloc<AboutUsEvent, AboutUsState> {
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
  AboutUsBloc() : super(AboutUsState.initial()) {
    on<AboutUsEvent>(
          (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(AboutUsState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(AboutUsState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }
      },
    );
  }
}
