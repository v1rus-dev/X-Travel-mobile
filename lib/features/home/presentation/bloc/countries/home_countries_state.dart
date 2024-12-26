part of 'home_countries_bloc.dart';

@immutable
sealed class HomeCountriesState extends Equatable {}

final class HomeCountriesInitial extends HomeCountriesState {
  @override
  List<Object?> get props => [];
}

final class HomeCountriesLoading extends HomeCountriesState {
  @override
  List<Object?> get props => [];
}

final class HomeCountriesLoaded extends HomeCountriesState {
  final List<Country> counties;

  HomeCountriesLoaded({required this.counties});

  @override
  List<Object?> get props => [counties];
}
