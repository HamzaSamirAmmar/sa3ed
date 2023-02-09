import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/use_cases/delete_help_use_case.dart';
import '../../domain/use_cases/get_help_history_use_case.dart';
import 'history_event.dart';
import 'history_state.dart';

@injectable
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final GetHelpHistoryUseCase _getHelpHistoryUseCase;
  final DeleteHelpUseCase _deleteHelpUseCase;

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

  void addGetHelpHistoryEvent() {
    add(GetHelpHistory());
  }

  void addDeleteHelpEvent({
    required int id,
    required bool isOffer,
  }) {
    add(DeleteHelp(
      (b) => b
        ..id = id
        ..isOffer = isOffer,
    ));
  }

  @factoryMethod
  HistoryBloc(
    this._getHelpHistoryUseCase,
    this._deleteHelpUseCase,
  ) : super(HistoryState.initial()) {
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

        /*** GetHelpHistory **/
        if (event is GetHelpHistory) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _getHelpHistoryUseCase(NoParams());

          result.fold(
            (failure) => emit(
              HistoryState.failure(message: failure.error, currentState: state),
            ),
            (helps) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..helps.replace(helps),
              ),
            ),
          );
        }

        /*** DeleteHelp **/
        if (event is DeleteHelp) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _deleteHelpUseCase(
            ParamsDeleteHelpUseCase(
              id: event.id,
              isOffer: event.isOffer,
            ),
          );

          result.fold(
            (failure) => emit(
              HistoryState.failure(message: failure.error, currentState: state),
            ),
            (success) => emit(
              state.rebuild(
                (b) => b
                  ..isLoading = false
                  ..message = "تمت عملية الحذف بنجاح"
                  ..helps.removeWhere((b) => b.id == event.id),
              ),
            ),
          );
        }
      },
    );
  }
}
