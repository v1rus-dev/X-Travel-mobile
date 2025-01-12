class CountryInfoDto {
  final int countryId;
  final String countryName;
  final String folderName;
  final String imageUrl;
  String? shortName;

  CountryInfoDto(
      {required this.countryId,
      required this.countryName,
      required this.folderName,
      required this.imageUrl,
      required this.shortName});

  static CountryInfoDto fromJson(Map<String, dynamic> json) => CountryInfoDto(
      countryId: json['countryId'],
      countryName: json['countryName'],
      folderName: json['folderName'],
      imageUrl: json['imageUrl'],
      shortName: json['shortName']);

  @override
  String toString() {
    return 'CountryInfoDto{countryId=$countryId, countryName=$countryName, folderName=$folderName, imageUrl=$imageUrl, shortName=$shortName}';
  }
}
