import 'package:xtravel/features/home/data/model/country_info_dto.dart';
import 'package:xtravel/features/home/domain/entity/country.dart';

class CountryMapper {
  static Country mapToEntity(CountryInfoDto dto) => Country(
        countryId: dto.countryId,
        countryNameRu: dto.countryNameRu,
        counryNameEn: dto.countryNameEn,
        folderName: dto.folderName,
        imageUrl: dto.imageUrl,
      );
}
