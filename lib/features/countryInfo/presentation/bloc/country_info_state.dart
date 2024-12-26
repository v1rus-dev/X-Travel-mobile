part of 'country_info_bloc.dart';

sealed class CountryInfoState extends Equatable {
  const CountryInfoState();
  
  @override
  List<Object> get props => [];
}

final class CountryInfoInitial extends CountryInfoState {}
