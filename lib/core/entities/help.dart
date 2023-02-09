import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class Help extends Equatable {
  final int id;

  final String name;

  final String phone;

  @JsonKey(name: "id_city")
  final int cityId;

  @JsonKey(name: "id_area")
  final int areaId;

  @JsonKey(name: "location_details")
  final String locationDetails;

  @JsonKey(name: "notice")
  final String notes;

  @JsonKey(name: "moveable")
  final bool movable;

  @JsonKey(name: "is_offer")
  final bool isOffer;

  @JsonKey(name: "created_at")
  final String createdAt;

  const Help({
    required this.id,
    required this.cityId,
    required this.areaId,
    required this.locationDetails,
    required this.name,
    required this.phone,
    required this.notes,
    required this.movable,
    required this.isOffer,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
    id,
    cityId,
    areaId,
    locationDetails,
    name,
    phone,
    notes,
    movable,
    isOffer,
    createdAt,
  ];
}
