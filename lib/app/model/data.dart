import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';
part 'data.g.dart';


@freezed
class PictureTeachOnMars with _$PictureTeachOnMars {
  const factory PictureTeachOnMars({
    required int width,
    required int height,
    required String url,
  }) = _PictureTeachOnMars;

  factory PictureTeachOnMars.fromJson(Map<String, dynamic> json) =>
      _$PictureTeachOnMarsFromJson(json);
}

@freezed
class TeachOnMarsData with _$TeachOnMarsData {
  const factory TeachOnMarsData({
    required String id,
    required int type,
    required String title,
    String? excerpt,
    String? text,
    String? author,
    PictureTeachOnMars? picture,
  }) = _TeachOnMarsData;

  factory TeachOnMarsData.fromJson(Map<String, dynamic> json) =>
      _$TeachOnMarsDataFromJson(json);
}
