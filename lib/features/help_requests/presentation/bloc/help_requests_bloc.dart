import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_help_requests_use_case.dart';
import 'help_requests_event.dart';
import 'help_requests_state.dart';

@injectable
class HelpRequestsBloc extends Bloc<HelpRequestsEvent, HelpRequestsState> {
  final GetHelpRequestsUseCase _getHelpRequestsUseCase;

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

  void addGetHelpRequestsEvent({
    int? governorateId,
    int? cityId,
    int? helpTypeId,
  }) {
    add(GetAllHelpRequests(
      (b) => b
        ..helpType = helpTypeId
        ..cityId = cityId
        ..governorateId = governorateId
        ..page = state.helpRequests.currentPage,
    ));
  }

  @factoryMethod
  HelpRequestsBloc(
    this._getHelpRequestsUseCase,
  ) : super(HelpRequestsState.initial()) {
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

        /*** GetAllhelpRequests ***/
        if (event is GetAllHelpRequests) {
          if (!state.helpRequests.isFinished) {
            if (state.helpRequests.currentPage == 1) {
              emit(state.rebuild((b) => b..isLoading = true));
            } else {
              emit(state.rebuild((b) => b..helpRequests.isLoading = true));
            }
            final result = await _getHelpRequestsUseCase(
              ParamsGetHelpRequestsUseCase(
                page: event.page,
                governorateId: event.governorateId,
                cityId: event.cityId,
                helpTypeId: event.helpType,
              ),
            );
            result.fold(
              (failure) {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..helpRequests.isLoading = false
                      ..message = failure.error
                      ..error = true,
                  ),
                );
              },
              (helpRequests) => {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..helpRequests.isLoading = false
                      ..helpRequests.items.addAll(helpRequests.data)
                      ..helpRequests.currentPage = b.helpRequests.currentPage! + 1
                      ..helpRequests.isFinished =
                          b.helpRequests.currentPage! > helpRequests.count,
                  ),
                ),
              },
            );
          }
        }
      },
    );
  }
}
