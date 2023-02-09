import 'package:equatable/equatable.dart';

class SubmittedForm extends Equatable {
  final int id;

  const SubmittedForm({required this.id});

  @override
  List<Object?> get props => [id];
}
