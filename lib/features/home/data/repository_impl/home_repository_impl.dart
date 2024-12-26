import 'package:dartz/dartz.dart';
import 'package:xtravel/common/utils/abstract_network_datasource.dart';
import 'package:xtravel/features/home/data/datasource/home_local_datasource.dart';
import 'package:xtravel/features/home/data/datasource/home_network_datasource.dart';
import 'package:xtravel/features/home/data/mappers/country_mapper.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';
import 'package:xtravel/features/home/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<Either<Failure, List<Country>>> loadCountries() async {
    final res = await _homeNetworkDatasource.load();
    return res
        .map((dto) => dto.countries.map(CountryMapper.mapToEntity).toList());
  }

  final HomeNetworkDatasource _homeNetworkDatasource = HomeNetworkDatasource();
  final HomeLocalDatasource _homeLocalDatasource = HomeLocalDatasource();
}
