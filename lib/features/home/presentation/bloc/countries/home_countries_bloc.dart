import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';
import 'package:xtravel/features/home/domain/repository/home_repository.dart';

part 'home_countries_event.dart';
part 'home_countries_state.dart';

class HomeCountriesBloc extends Bloc<HomeCountriesEvent, HomeCountriesState> {
  HomeCountriesBloc({required this.homeRepository}) : super(HomeCountriesInitial()) {
    on<HomeCountriesUpdateEvent>(_onUpdateHomeEvent);
  }

  Future<void> _onUpdateHomeEvent(
      HomeCountriesUpdateEvent event, Emitter<HomeCountriesState> emit) async {
    emit.call(HomeCountriesLoading());
    debugPrint("Update home event");
    final result = await homeRepository.loadCountries();

    result.fold((_) {}, (data) {
      emit.call(HomeCountriesLoaded(counties: data));
    });
  }

  final HomeRepository homeRepository;
}
