// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PictureTeachOnMars _$PictureTeachOnMarsFromJson(Map<String, dynamic> json) {
  return _PictureTeachOnMars.fromJson(json);
}

/// @nodoc
mixin _$PictureTeachOnMars {
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureTeachOnMarsCopyWith<PictureTeachOnMars> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureTeachOnMarsCopyWith<$Res> {
  factory $PictureTeachOnMarsCopyWith(
          PictureTeachOnMars value, $Res Function(PictureTeachOnMars) then) =
      _$PictureTeachOnMarsCopyWithImpl<$Res, PictureTeachOnMars>;
  @useResult
  $Res call({int width, int height, String url});
}

/// @nodoc
class _$PictureTeachOnMarsCopyWithImpl<$Res, $Val extends PictureTeachOnMars>
    implements $PictureTeachOnMarsCopyWith<$Res> {
  _$PictureTeachOnMarsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PictureTeachOnMarsCopyWith<$Res>
    implements $PictureTeachOnMarsCopyWith<$Res> {
  factory _$$_PictureTeachOnMarsCopyWith(_$_PictureTeachOnMars value,
          $Res Function(_$_PictureTeachOnMars) then) =
      __$$_PictureTeachOnMarsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int width, int height, String url});
}

/// @nodoc
class __$$_PictureTeachOnMarsCopyWithImpl<$Res>
    extends _$PictureTeachOnMarsCopyWithImpl<$Res, _$_PictureTeachOnMars>
    implements _$$_PictureTeachOnMarsCopyWith<$Res> {
  __$$_PictureTeachOnMarsCopyWithImpl(
      _$_PictureTeachOnMars _value, $Res Function(_$_PictureTeachOnMars) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = null,
    Object? height = null,
    Object? url = null,
  }) {
    return _then(_$_PictureTeachOnMars(
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PictureTeachOnMars
    with DiagnosticableTreeMixin
    implements _PictureTeachOnMars {
  const _$_PictureTeachOnMars(
      {required this.width, required this.height, required this.url});

  factory _$_PictureTeachOnMars.fromJson(Map<String, dynamic> json) =>
      _$$_PictureTeachOnMarsFromJson(json);

  @override
  final int width;
  @override
  final int height;
  @override
  final String url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PictureTeachOnMars(width: $width, height: $height, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PictureTeachOnMars'))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PictureTeachOnMars &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PictureTeachOnMarsCopyWith<_$_PictureTeachOnMars> get copyWith =>
      __$$_PictureTeachOnMarsCopyWithImpl<_$_PictureTeachOnMars>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PictureTeachOnMarsToJson(
      this,
    );
  }
}

abstract class _PictureTeachOnMars implements PictureTeachOnMars {
  const factory _PictureTeachOnMars(
      {required final int width,
      required final int height,
      required final String url}) = _$_PictureTeachOnMars;

  factory _PictureTeachOnMars.fromJson(Map<String, dynamic> json) =
      _$_PictureTeachOnMars.fromJson;

  @override
  int get width;
  @override
  int get height;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_PictureTeachOnMarsCopyWith<_$_PictureTeachOnMars> get copyWith =>
      throw _privateConstructorUsedError;
}

TeachOnMarsData _$TeachOnMarsDataFromJson(Map<String, dynamic> json) {
  return _TeachOnMarsData.fromJson(json);
}

/// @nodoc
mixin _$TeachOnMarsData {
  String get id => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get excerpt => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get author => throw _privateConstructorUsedError;
  PictureTeachOnMars? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TeachOnMarsDataCopyWith<TeachOnMarsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeachOnMarsDataCopyWith<$Res> {
  factory $TeachOnMarsDataCopyWith(
          TeachOnMarsData value, $Res Function(TeachOnMarsData) then) =
      _$TeachOnMarsDataCopyWithImpl<$Res, TeachOnMarsData>;
  @useResult
  $Res call(
      {String id,
      int type,
      String title,
      String? excerpt,
      String? text,
      String? author,
      PictureTeachOnMars? picture});

  $PictureTeachOnMarsCopyWith<$Res>? get picture;
}

/// @nodoc
class _$TeachOnMarsDataCopyWithImpl<$Res, $Val extends TeachOnMarsData>
    implements $TeachOnMarsDataCopyWith<$Res> {
  _$TeachOnMarsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? excerpt = freezed,
    Object? text = freezed,
    Object? author = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureTeachOnMars?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PictureTeachOnMarsCopyWith<$Res>? get picture {
    if (_value.picture == null) {
      return null;
    }

    return $PictureTeachOnMarsCopyWith<$Res>(_value.picture!, (value) {
      return _then(_value.copyWith(picture: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TeachOnMarsDataCopyWith<$Res>
    implements $TeachOnMarsDataCopyWith<$Res> {
  factory _$$_TeachOnMarsDataCopyWith(
          _$_TeachOnMarsData value, $Res Function(_$_TeachOnMarsData) then) =
      __$$_TeachOnMarsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int type,
      String title,
      String? excerpt,
      String? text,
      String? author,
      PictureTeachOnMars? picture});

  @override
  $PictureTeachOnMarsCopyWith<$Res>? get picture;
}

/// @nodoc
class __$$_TeachOnMarsDataCopyWithImpl<$Res>
    extends _$TeachOnMarsDataCopyWithImpl<$Res, _$_TeachOnMarsData>
    implements _$$_TeachOnMarsDataCopyWith<$Res> {
  __$$_TeachOnMarsDataCopyWithImpl(
      _$_TeachOnMarsData _value, $Res Function(_$_TeachOnMarsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? title = null,
    Object? excerpt = freezed,
    Object? text = freezed,
    Object? author = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_TeachOnMarsData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      excerpt: freezed == excerpt
          ? _value.excerpt
          : excerpt // ignore: cast_nullable_to_non_nullable
              as String?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      author: freezed == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureTeachOnMars?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TeachOnMarsData
    with DiagnosticableTreeMixin
    implements _TeachOnMarsData {
  const _$_TeachOnMarsData(
      {required this.id,
      required this.type,
      required this.title,
      this.excerpt,
      this.text,
      this.author,
      this.picture});

  factory _$_TeachOnMarsData.fromJson(Map<String, dynamic> json) =>
      _$$_TeachOnMarsDataFromJson(json);

  @override
  final String id;
  @override
  final int type;
  @override
  final String title;
  @override
  final String? excerpt;
  @override
  final String? text;
  @override
  final String? author;
  @override
  final PictureTeachOnMars? picture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TeachOnMarsData(id: $id, type: $type, title: $title, excerpt: $excerpt, text: $text, author: $author, picture: $picture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TeachOnMarsData'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('excerpt', excerpt))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('author', author))
      ..add(DiagnosticsProperty('picture', picture));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TeachOnMarsData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.excerpt, excerpt) || other.excerpt == excerpt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, title, excerpt, text, author, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TeachOnMarsDataCopyWith<_$_TeachOnMarsData> get copyWith =>
      __$$_TeachOnMarsDataCopyWithImpl<_$_TeachOnMarsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TeachOnMarsDataToJson(
      this,
    );
  }
}

abstract class _TeachOnMarsData implements TeachOnMarsData {
  const factory _TeachOnMarsData(
      {required final String id,
      required final int type,
      required final String title,
      final String? excerpt,
      final String? text,
      final String? author,
      final PictureTeachOnMars? picture}) = _$_TeachOnMarsData;

  factory _TeachOnMarsData.fromJson(Map<String, dynamic> json) =
      _$_TeachOnMarsData.fromJson;

  @override
  String get id;
  @override
  int get type;
  @override
  String get title;
  @override
  String? get excerpt;
  @override
  String? get text;
  @override
  String? get author;
  @override
  PictureTeachOnMars? get picture;
  @override
  @JsonKey(ignore: true)
  _$$_TeachOnMarsDataCopyWith<_$_TeachOnMarsData> get copyWith =>
      throw _privateConstructorUsedError;
}
