import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class SummaryHelp extends Equatable {
  final int id;

  @JsonKey(name: "id_city")
  final int cityId;

  @JsonKey(name: "id_area")
  final int areaId;

  @JsonKey(name: "help_type")
  final int helpType;

  @JsonKey(name: "created_at")
  final String createdAt;

  const SummaryHelp({
    required this.id,
    required this.helpType,
    required this.cityId,
    required this.areaId,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    cityId,
    areaId,
    helpType,
    createdAt,
  ];
}
