import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/use_cases/get_help_offers_use_case.dart';
import 'help_offers_event.dart';
import 'help_offers_state.dart';

@injectable
class HelpOffersBloc extends Bloc<HelpOffersEvent, HelpOffersState> {
  final GetHelpOffersUseCase _getHelpOffersUseCase;

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

  void addGetHelpOffersEvent({
    int? governorateId,
    int? cityId,
    int? helpTypeId,
  }) {
    add(GetAllHelpOffers(
      (b) => b
        ..helpType = helpTypeId
        ..cityId = cityId
        ..governorateId = governorateId
        ..page = state.helpOffers.currentPage,
    ));
  }

  @factoryMethod
  HelpOffersBloc(
    this._getHelpOffersUseCase,
  ) : super(HelpOffersState.initial()) {
    on<HelpOffersEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(HelpOffersState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(HelpOffersState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }

        /*** GetAllHelpOffers ***/
        if (event is GetAllHelpOffers) {
          if (!state.helpOffers.isFinished) {
            if (state.helpOffers.currentPage == 0) {
              emit(state.rebuild((b) => b..isLoading = true));
            } else {
              emit(state.rebuild((b) => b..helpOffers.isLoading = true));
            }
            final result = await _getHelpOffersUseCase(
              ParamsGetHelpOffersUseCase(
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
                      ..helpOffers.isLoading = false
                      ..message = failure.error
                      ..error = true,
                  ),
                );
              },
              (helpOffers) => {
                emit(
                  state.rebuild(
                    (b) => b
                      ..isLoading = false
                      ..helpOffers.isLoading = false
                      ..helpOffers.items.addAll(helpOffers.data)
                      ..helpOffers.currentPage = b.helpOffers.currentPage! + 1
                      ..helpOffers.isFinished =
                          b.helpOffers.currentPage! >= helpOffers.count,
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
