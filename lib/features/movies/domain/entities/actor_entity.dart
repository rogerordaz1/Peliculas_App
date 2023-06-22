// ignore_for_file: non_constant_identifier_names

import 'package:equatable/equatable.dart';

class ActorEntity extends Equatable {
  final double popularity;
  final String name;
  final String original_name;
  final String? profile_path;

  const ActorEntity({
    required this.popularity,
    required this.name,
    required this.original_name,
    required this.profile_path,
  });

  @override
  List<Object?> get props => [popularity, name, original_name, profile_path];
}
