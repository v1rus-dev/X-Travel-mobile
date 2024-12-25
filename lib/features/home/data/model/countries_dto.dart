import 'package:xtravel/features/home/data/model/country_info_dto.dart';

class CountriesDto {
  final List<CountryInfoDto> countries;

  CountriesDto({required this.countries});

  static CountriesDto fromJson(Map<String, dynamic> json) => CountriesDto(
        countries: (json['countries'] as List<dynamic>)
            .map(
                (item) => CountryInfoDto.fromJson(item as Map<String, dynamic>))
            .toList(),
      );

  @override
  String toString() {
    return 'CountriesDto{countries=$countries}';
  }
}
