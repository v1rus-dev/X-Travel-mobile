import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:xtravel/features/countryInfo/domain/repositories/country_info_repository.dart';

part 'country_info_event.dart';
part 'country_info_state.dart';

class CountryInfoBloc extends Bloc<CountryInfoEvent, CountryInfoState> {
  CountryInfoBloc({required this.repository}) : super(CountryInfoInitial()) {
    on<CountryInfoEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final CountryInfoRepository repository;
}
