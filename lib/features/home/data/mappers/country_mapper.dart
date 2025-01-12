import 'package:xtravel/features/home/data/model/country_info_dto.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';

class CountryMapper {
  static Country mapToEntity(CountryInfoDto dto) => Country(
        countryId: dto.countryId,
        countryName: dto.countryName,
        folderName: dto.folderName,
        imageUrl: dto.imageUrl,
      );
}
