import 'package:equatable/equatable.dart';

class DatesEntity extends Equatable {
  final String maximum;
  final String minimum;

  const DatesEntity({
    required this.maximum,
    required this.minimum,
  });

  @override
  List<Object?> get props => [maximum, minimum];
}
