import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:talker/talker.dart';
import 'package:xtravel/core/providers/network_client_provider.dart';
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
}

initHome() {
  locator.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl());
}
