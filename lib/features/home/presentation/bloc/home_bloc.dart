import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';
import 'package:xtravel/features/home/domain/repository/home_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepository homeRepository;

  HomeBloc({required this.homeRepository}) : super(HomeInitialState()) {
    on<HomeEventInitial>(onInitEvent);
  }

  onInitEvent(HomeEventInitial event, Emitter<HomeState> emit) async {
    final countries = await homeRepository.loadCountries();
    talker.log("Countries list: ${countries}");

    countries.fold((failure) {
      emit.call(HomeLoadedError());
    }, (data) {
      emit.call(HomeLoadedState(countries: data));
    });
  }
}
