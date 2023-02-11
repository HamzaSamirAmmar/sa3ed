import 'package:equatable/equatable.dart';

import '../../../../core/util/enums.dart';
import '../../../../core/util/mixins.dart';

class InfoType extends Equatable implements Selectable {
  final int id;
  late final String name;

  InfoType({
    required this.id,
  }) {
    name = mapInfoTypeToString(id);
  }

  @override
  List<Object?> get props => [id, name];

  @override
  String get selectValue => name;
}
