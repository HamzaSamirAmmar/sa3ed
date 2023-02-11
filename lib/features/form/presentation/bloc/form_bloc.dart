import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/help_form_model.dart';
import '../../domain/use_cases/store_help_id_use_case.dart';
import '../../domain/use_cases/submit_help_form_use_case.dart';
import 'form_event.dart';
import 'form_state.dart';

@injectable
class FormBloc extends Bloc<FormEvent, FormState> {
  final SubmitHelpFormUseCase _submitHelpFormUseCase;
  final StoreHelpIdUseCase _storeHelpIdUseCase;

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

  void addSubmitHelpFormEvent({
    required HelpFormModel form,
    required bool isOffer,
  }) {
    add(SubmitHelpForm(
      (b) => b
        ..form = form
        ..isOffer = isOffer,
    ));
  }

  @factoryMethod
  FormBloc(
    this._submitHelpFormUseCase,
    this._storeHelpIdUseCase,
  ) : super(FormState.initial()) {
    on<FormEvent>(
      (event, emit) async {
        /*** ClearMessage **/
        if (event is ClearMessage) {
          emit(FormState.clearMessage(currentState: state));
        }

        /*** ReInitState **/
        if (event is ReInitState) {
          emit(FormState.initial());
          if (event.onStateReInitialized != null) {
            event.onStateReInitialized!();
          }
        }

        /*** SubmitHelpForm **/
        if (event is SubmitHelpForm) {
          emit(state.rebuild((b) => b..isLoading = true));

          final result = await _submitHelpFormUseCase(
            ParamsSubmitHelpFromUseCase(
              form: event.form,
              isOffer: event.isOffer,
            ),
          );

          result.fold(
            (failure) => emit(
              FormState.failure(
                message: failure.error,
                currentState: state,
              ),
            ),
            (submittedForm) => {
              emit(
                FormState.success(
                  message: "تمت عملية الإضافة بنجاح",
                  currentState: state,
                ),
              ),
            },
          );
        }
      },
    );
  }
}
