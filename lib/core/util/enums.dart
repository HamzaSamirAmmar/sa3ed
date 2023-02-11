import '../../features/helpful_information/domain/entities/info_type.dart';

String mapInfoTypeToString(int type) {
  Map<int, String> info = {
    0: "طوارئ",
    1: "إسعاف",
    2: "منظمات إغاثية",
    3: "مراكز إيواء",
    4: "آليات ثقيلة",
  };
  return info[type] ?? "غير محدد";
}

List<InfoType> infoTypes() => [
      InfoType(id: 0),
      InfoType(id: 1),
      InfoType(id: 2),
      InfoType(id: 3),
      InfoType(id: 4),
    ];
