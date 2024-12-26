import 'package:dartz/dartz.dart';
import 'package:xtravel/common/utils/abstract_network_datasource.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Country>>> loadCountries();
}