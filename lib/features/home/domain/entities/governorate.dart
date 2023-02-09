import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../core/util/mixins.dart';
import 'city.dart';

class Governorate extends Equatable  implements Selectable{
  final int id;
  final String name;

  @JsonKey(name: "city_area")
  final List<City> cities;

  const Governorate({
    required this.id,
    required this.name,
    required this.cities,
  });

  @override
  List<Object?> get props => [id, name, cities];

  @override
  String get selectValue => name;
}
