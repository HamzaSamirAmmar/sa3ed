import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

class Version extends Equatable {
  final String version;

  @JsonKey(name: "base_url")
  final String baseUrl;

  @JsonKey(name: "apk_url")
  final String apkUrl;

  const Version({
    required this.version,
    required this.baseUrl,
    required this.apkUrl,
  });

  @override
  List<Object?> get props => [version, baseUrl, apkUrl];
}
