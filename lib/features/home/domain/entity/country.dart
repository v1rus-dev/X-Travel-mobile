import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class Country extends Equatable {
  final int countryId;
  final String countryNameRu;
  final String counryNameEn;
  final String folderName;
  final String imageUrl;

  const Country({
    required this.countryId,
    required this.countryNameRu,
    required this.counryNameEn,
    required this.folderName,
    required this.imageUrl,
  });

  @override
  List<Object?> get props =>
      [countryId, countryNameRu, counryNameEn, folderName, imageUrl];
}
