// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PictureTeachOnMars _$$_PictureTeachOnMarsFromJson(
  Map<String, dynamic> json,
) =>
    _$_PictureTeachOnMars(
      width: json['width'] as int,
      height: json['height'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_PictureTeachOnMarsToJson(
  _$_PictureTeachOnMars instance,
) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'url': instance.url,
    };

_$_TeachOnMarsData _$$_TeachOnMarsDataFromJson(Map<String, dynamic> json) =>
    _$_TeachOnMarsData(
      id: json['id'] as String,
      type: json['type'] as int,
      title: json['title'] as String,
      excerpt: json['excerpt'] as String?,
      text: json['text'] as String?,
      author: json['author'] as String?,
      picture: json['picture'] == null
          ? null
          : PictureTeachOnMars.fromJson(
              json['picture'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$$_TeachOnMarsDataToJson(_$_TeachOnMarsData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'excerpt': instance.excerpt,
      'text': instance.text,
      'author': instance.author,
      'picture': instance.picture,
    };
