import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:xtravel/common/injection_container.dart';
import 'package:xtravel/common/utils/abstract_network_datasource.dart';
import 'package:xtravel/common/utils/xtravel_abstract_network_datasource.dart';
import 'package:xtravel/features/home/data/model/countries_dto.dart';

class HomeNetworkDatasource extends XtravelAbstractNetworkDatasource {
  Future<Either<Failure, void>> load() async {
    talker.log("Load");
    final result = get(requestURL: '/countries', onResponse: (response) {
      
      // debugPrint("Response: ${response.data as Map<String, dynamic>}");
      final data = CountriesDto.fromJson(response.data);
      debugPrint("Data: ${data.countries}");
      return Right(null);
    });
    return Right(null);
  }
}