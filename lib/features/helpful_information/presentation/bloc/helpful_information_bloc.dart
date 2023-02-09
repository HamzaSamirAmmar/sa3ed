import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sa3ed/core/usecases/usecase.dart';

import '../../domain/use_cases/get_helpful_information_use_case.dart';
import 'helpful_information_event.dart';
import 'helpful_information_state.dart';

@injectable
class HelpfulInformationBloc
    extends Bloc<HelpfulInformationEvent, HelpfulInformationState> {
  final GetHelpfulInformationUseCase _getHelpfulInformationUseCase;

  void clearMessage() {
    add(ClearMessage());
  }

  void addGetHelpfulInformationEvent() {
    add(GetHelpfulInformation());
  }

  void reInitState({
    Function? onStateReInitialized,
  }) {
    add(ReInitState(
      (b) => b..onStateReInitialized = onStateReInitialized,
    ));
  }

  @factoryMethod
  HelpfulInformationBloc(
    this._getHelpfulInformationUseCase,
  ) : super(HelpfulInformationState.initial()) {
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

        /*** GetHelpfulInformation **/
        if (event is GetHelpfulInformation) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getHelpfulInformationUseCase(
            NoParams(),
          );

          result.fold(
            (failure) => emit(
              HelpfulInformationState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (info) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..info = info,
              ),
            ),
          );
        }
      },
    );
  }
}
