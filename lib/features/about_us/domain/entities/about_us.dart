import 'package:equatable/equatable.dart';

class AboutUs extends Equatable {
  final String html;

  const AboutUs({
    required this.html,
  });

  @override
  List<Object?> get props => [html];
}
