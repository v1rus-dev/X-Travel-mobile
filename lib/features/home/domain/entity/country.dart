import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class Country extends Equatable {
  final int countryId;
  final String countryName;
  final String folderName;
  final String imageUrl;

  const Country({
    required this.countryId,
    required this.countryName,
    required this.folderName,
    required this.imageUrl,
  });

  @override
  List<Object?> get props =>
      [countryId, countryName, folderName, imageUrl];
}
