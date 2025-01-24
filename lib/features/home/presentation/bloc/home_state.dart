part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitialState extends HomeState {
  @override
  List<Object?> get props => [];
}

final class HomeLoadedState extends HomeState {
  final List<Country> countries;

  const HomeLoadedState({required this.countries});

  @override
  List<Object?> get props => [countries];
}

final class HomeLoadedError extends HomeState {
  @override
  List<Object?> get props => [];
}
