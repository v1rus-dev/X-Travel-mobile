import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:xtravel/features/home/domain/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this.homeRepository}) : super(HomeInitial()) {
    on<UpdateHomeEvent>(_onUpdateHomeEvent);
  }

  Future<void> _onUpdateHomeEvent(UpdateHomeEvent event, Emitter<HomeState> emit) async{
    debugPrint("Update home event");
    await homeRepository.testLoad();
  }

  final HomeRepository homeRepository;
}
