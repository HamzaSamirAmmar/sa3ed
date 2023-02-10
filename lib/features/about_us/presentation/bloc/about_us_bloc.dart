import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/use_cases/get_about_us_use_case.dart';
import 'about_us_event.dart';
import 'about_us_state.dart';

@injectable
class AboutUsBloc extends Bloc<AboutUsEvent, AboutUsState> {
  final GetAboutUsUseCase _getAboutUsUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetAboutUsEvent() {
    add(GetAboutUs());
  }

  void reInitState({
    Function? onStateReInitialized,
  }) {
    add(ReInitState(
      (b) => b..onStateReInitialized = onStateReInitialized,
    ));
  }

  @factoryMethod
  AboutUsBloc(
    this._getAboutUsUseCase,
  ) : super(AboutUsState.initial()) {
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

        /*** GetAboutUs **/
        if (event is GetAboutUs) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getAboutUsUseCase(NoParams());

          result.fold(
            (failure) => emit(
              AboutUsState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (aboutUs) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..aboutUs = aboutUs,
              ),
            ),
          );
        }
      },
    );
  }
}
