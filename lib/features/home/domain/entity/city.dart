import 'package:equatable/equatable.dart';

class City extends Equatable {
  final int cityId;

  const City({required this.cityId});

  @override
  List<Object?> get props => [cityId];
}
