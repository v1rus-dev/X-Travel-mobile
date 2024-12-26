import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker/talker.dart';
import 'package:xtravel/core/providers/network_client_provider.dart';
import 'package:xtravel/features/countryInfo/data/repositories_impl/country_info_repository_impl.dart';
import 'package:xtravel/features/countryInfo/domain/repositories/country_info_repository.dart';
import 'package:xtravel/features/home/data/repository_impl/home_repository_impl.dart';
import 'package:xtravel/features/home/domain/repository/home_repository.dart';

final locator = GetIt.instance;

final Talker talker = locator();

initLocator() {
  locator.registerSingleton(Talker(
    settings: TalkerSettings(enabled: true)
  ));
  locator.registerLazySingleton<Dio>(() => NetworkClientProvider.client);

  initHome();
  initCountryInfo();
}

initHome() {
  locator.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl());
}

initCountryInfo() {
  locator.registerLazySingleton<CountryInfoRepository>(() => CountryInfoRepositoryImpl());
}