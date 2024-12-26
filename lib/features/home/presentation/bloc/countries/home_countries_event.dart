part of 'home_countries_bloc.dart';

@immutable
sealed class HomeCountriesEvent extends Equatable {}

final class HomeCountriesUpdateEvent extends HomeCountriesEvent {
  @override
  List<Object?> get props => [];
}
