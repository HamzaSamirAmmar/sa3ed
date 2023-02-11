import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class HelpfulInformation extends Equatable {
  final int id;

  final String name;

  final String description;

  @JsonKey(name: 'id_city')
  final int governorateId;

  @JsonKey(name: 'info_type')
  final int infoType;

  @JsonKey(name: 'location_details')
  final String locationDetails;

  const HelpfulInformation({
    required this.name,
    required this.governorateId,
    required this.id,
    required this.locationDetails,
    required this.description,
    required this.infoType,
  });

  @override
  List<Object?> get props => [
        name,
        governorateId,
        id,
        locationDetails,
        description,
        infoType,
      ];
}
