import 'package:equatable/equatable.dart';

import '../../../../core/util/mixins.dart';

class City extends Equatable implements Selectable {
  final int id;
  final String name;

  const City({
    required this.id,
    required this.name,
  });

  @override
  List<Object?> get props => [id, name];

  @override
  String get selectValue => name;
}
