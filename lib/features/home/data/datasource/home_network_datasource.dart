import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:xtravel/common/utils/abstract_network_datasource.dart';
import 'package:xtravel/common/utils/xtravel_abstract_network_datasource.dart';
import 'package:xtravel/features/home/data/model/countries_dto.dart';

class HomeNetworkDatasource extends XtravelAbstractNetworkDatasource {
  Future<Either<Failure, CountriesDto>> load() async {
    return get(
        requestURL: '/countries',
        onResponse: (response) {
          final data = CountriesDto.fromJson(response.data);
          debugPrint("Data: ${data.countries}");
          return Right(data);
        });
  }
}
