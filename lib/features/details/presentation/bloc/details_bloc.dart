import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_help_use_case.dart';
import 'details_event.dart';
import 'details_state.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final GetHelpUseCase _getHelpUseCase;

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

  void addGetHelpEvent({
    required int id,
    required bool isOffer,
  }) {
    add(GetHelp(
      (b) => b
        ..id = id
        ..isOffer = isOffer,
    ));
  }

  @factoryMethod
  DetailsBloc(this._getHelpUseCase) : super(DetailsState.initial()) {
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

        /*** GetHelp **/
        if (event is GetHelp) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getHelpUseCase(
            ParamsGetHelpUseCase(id: event.id, isOffer: event.isOffer),
          );

          result.fold(
            (failure) => emit(
              DetailsState.failure(message: failure.error, currentState: state),
            ),
            (help) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..help = help,
              ),
            ),
          );
        }
      },
    );
  }
}
