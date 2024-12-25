class CountryInfoDto {
  final int countryId;
  final String countryNameRu;
  final String countryNameEn;
  final String folderName;
  final String imageUrl;

  CountryInfoDto({
    required this.countryId,
    required this.countryNameRu,
    required this.countryNameEn,
    required this.folderName,
    required this.imageUrl,
  });

  static CountryInfoDto fromJson(Map<String, dynamic> json) => CountryInfoDto(
        countryId: json['countryId'],
        countryNameRu: json['countryNameRu'],
        countryNameEn: json['countryNameEn'],
        folderName: json['folderName'],
        imageUrl: json['imageUrl'],
      );

  @override
  String toString() {
    return 'CountryInfoDto{countryId=$countryId, countryNameRu=$countryNameRu, countryNameEn=$countryNameEn, folderName=$folderName, imageUrl=$imageUrl}';
  }
}
