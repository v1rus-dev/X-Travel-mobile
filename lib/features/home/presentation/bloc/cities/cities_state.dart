part of 'cities_bloc.dart';

sealed class CitiesState extends Equatable {
  const CitiesState();
  
  @override
  List<Object> get props => [];
}

final class CitiesInitial extends CitiesState {}
