import 'package:xtravel/features/home/data/datasource/home_local_datasource.dart';
import 'package:xtravel/features/home/data/datasource/home_network_datasource.dart';
import 'package:xtravel/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {

  @override
  Future<void> testLoad() async {
    final res = await _homeNetworkDatasource.load();
    return;
  }

  
  final HomeNetworkDatasource _homeNetworkDatasource = HomeNetworkDatasource();
  final HomeLocalDatasource _homeLocalDatasource = HomeLocalDatasource();
}