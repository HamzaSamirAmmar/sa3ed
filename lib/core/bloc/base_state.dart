// import 'package:built_value/built_value.dart';
//
// part 'base_state.g.dart';

// abstract class BaseState<V, B>
//     implements Built<BaseState<V, B>, BaseStateBuilder<V, B>> {
//   bool get isLoading;
//
//   bool get error;
//
//   String get message;
//
//   BaseState._();
//
//   factory BaseState([void Function(BaseStateBuilder<V, B>)? updates]) = _$BaseState<V, B>;
// }

mixin BaseState {
  bool get isLoading;

  bool get error;

  String get message;
}

mixin Provider {
  bool get statusChanged;
}

mixin Detailed {
  bool get notFound;
}
