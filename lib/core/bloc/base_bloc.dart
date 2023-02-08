// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:built_value/built_value.dart';
//
// import 'bloc.dart';
//
// abstract class BaseBloc<E extends BaseEvent,
//         S extends Built<BaseState, BaseStateBuilder>>
//     extends Bloc<BaseEvent, Built<BaseState, BaseStateBuilder>> {
//   void clearMessage() {
//     add(ClearMessage());
//   }
//
//   BaseBloc(S initialState) : super(initialState) {
//     on<E>(
//       (event, emit) async {
//         /*** ClearMessage ***/
//         if (E is ClearMessage) {
//           emit(
//             state.rebuild(
//               (b) => b
//                 ..message = ''
//                 ..error = false,
//             ),
//           );
//         }
//       },
//     );
//   }
// }
