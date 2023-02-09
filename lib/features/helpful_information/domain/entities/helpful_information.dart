import 'package:equatable/equatable.dart';

class HelpfulInformation extends Equatable {
  final String html;

  const HelpfulInformation({
    required this.html,
  });

  @override
  List<Object?> get props => [html];
}
