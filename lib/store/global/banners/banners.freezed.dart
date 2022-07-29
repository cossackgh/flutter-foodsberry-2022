// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banners.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Banner _$BannerFromJson(Map<String, dynamic> json) {
  return _Banner.fromJson(json);
}

/// @nodoc
mixin _$Banner {
  List<ResultsBanner> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerCopyWith<Banner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerCopyWith<$Res> {
  factory $BannerCopyWith(Banner value, $Res Function(Banner) then) =
      _$BannerCopyWithImpl<$Res>;
  $Res call({List<ResultsBanner> results});
}

/// @nodoc
class _$BannerCopyWithImpl<$Res> implements $BannerCopyWith<$Res> {
  _$BannerCopyWithImpl(this._value, this._then);

  final Banner _value;
  // ignore: unused_field
  final $Res Function(Banner) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsBanner>,
    ));
  }
}

/// @nodoc
abstract class _$$_BannerCopyWith<$Res> implements $BannerCopyWith<$Res> {
  factory _$$_BannerCopyWith(_$_Banner value, $Res Function(_$_Banner) then) =
      __$$_BannerCopyWithImpl<$Res>;
  @override
  $Res call({List<ResultsBanner> results});
}

/// @nodoc
class __$$_BannerCopyWithImpl<$Res> extends _$BannerCopyWithImpl<$Res>
    implements _$$_BannerCopyWith<$Res> {
  __$$_BannerCopyWithImpl(_$_Banner _value, $Res Function(_$_Banner) _then)
      : super(_value, (v) => _then(v as _$_Banner));

  @override
  _$_Banner get _value => super._value as _$_Banner;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_Banner(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsBanner>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Banner implements _Banner {
  const _$_Banner({required final List<ResultsBanner> results})
      : _results = results;

  factory _$_Banner.fromJson(Map<String, dynamic> json) =>
      _$$_BannerFromJson(json);

  final List<ResultsBanner> _results;
  @override
  List<ResultsBanner> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Banner(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Banner &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
      __$$_BannerCopyWithImpl<_$_Banner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerToJson(
      this,
    );
  }
}

abstract class _Banner implements Banner {
  const factory _Banner({required final List<ResultsBanner> results}) =
      _$_Banner;

  factory _Banner.fromJson(Map<String, dynamic> json) = _$_Banner.fromJson;

  @override
  List<ResultsBanner> get results;
  @override
  @JsonKey(ignore: true)
  _$$_BannerCopyWith<_$_Banner> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsBanner _$ResultsBannerFromJson(Map<String, dynamic> json) {
  return _ResultsBanner.fromJson(json);
}

/// @nodoc
mixin _$ResultsBanner {
  int get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_slider')
  bool? get inSlider => throw _privateConstructorUsedError;
  int? get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsBannerCopyWith<ResultsBanner> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsBannerCopyWith<$Res> {
  factory $ResultsBannerCopyWith(
          ResultsBanner value, $Res Function(ResultsBanner) then) =
      _$ResultsBannerCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? image,
      String? url,
      String? slug,
      @JsonKey(name: 'in_slider') bool? inSlider,
      int? position});
}

/// @nodoc
class _$ResultsBannerCopyWithImpl<$Res>
    implements $ResultsBannerCopyWith<$Res> {
  _$ResultsBannerCopyWithImpl(this._value, this._then);

  final ResultsBanner _value;
  // ignore: unused_field
  final $Res Function(ResultsBanner) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? slug = freezed,
    Object? inSlider = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      inSlider: inSlider == freezed
          ? _value.inSlider
          : inSlider // ignore: cast_nullable_to_non_nullable
              as bool?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultsBannerCopyWith<$Res>
    implements $ResultsBannerCopyWith<$Res> {
  factory _$$_ResultsBannerCopyWith(
          _$_ResultsBanner value, $Res Function(_$_ResultsBanner) then) =
      __$$_ResultsBannerCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? image,
      String? url,
      String? slug,
      @JsonKey(name: 'in_slider') bool? inSlider,
      int? position});
}

/// @nodoc
class __$$_ResultsBannerCopyWithImpl<$Res>
    extends _$ResultsBannerCopyWithImpl<$Res>
    implements _$$_ResultsBannerCopyWith<$Res> {
  __$$_ResultsBannerCopyWithImpl(
      _$_ResultsBanner _value, $Res Function(_$_ResultsBanner) _then)
      : super(_value, (v) => _then(v as _$_ResultsBanner));

  @override
  _$_ResultsBanner get _value => super._value as _$_ResultsBanner;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? url = freezed,
    Object? slug = freezed,
    Object? inSlider = freezed,
    Object? position = freezed,
  }) {
    return _then(_$_ResultsBanner(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      inSlider: inSlider == freezed
          ? _value.inSlider
          : inSlider // ignore: cast_nullable_to_non_nullable
              as bool?,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultsBanner implements _ResultsBanner {
  const _$_ResultsBanner(
      {required this.id,
      required this.image,
      required this.url,
      required this.slug,
      @JsonKey(name: 'in_slider') required this.inSlider,
      required this.position});

  factory _$_ResultsBanner.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsBannerFromJson(json);

  @override
  final int id;
  @override
  final String? image;
  @override
  final String? url;
  @override
  final String? slug;
  @override
  @JsonKey(name: 'in_slider')
  final bool? inSlider;
  @override
  final int? position;

  @override
  String toString() {
    return 'ResultsBanner(id: $id, image: $image, url: $url, slug: $slug, inSlider: $inSlider, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultsBanner &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.inSlider, inSlider) &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(inSlider),
      const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$$_ResultsBannerCopyWith<_$_ResultsBanner> get copyWith =>
      __$$_ResultsBannerCopyWithImpl<_$_ResultsBanner>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsBannerToJson(
      this,
    );
  }
}

abstract class _ResultsBanner implements ResultsBanner {
  const factory _ResultsBanner(
      {required final int id,
      required final String? image,
      required final String? url,
      required final String? slug,
      @JsonKey(name: 'in_slider') required final bool? inSlider,
      required final int? position}) = _$_ResultsBanner;

  factory _ResultsBanner.fromJson(Map<String, dynamic> json) =
      _$_ResultsBanner.fromJson;

  @override
  int get id;
  @override
  String? get image;
  @override
  String? get url;
  @override
  String? get slug;
  @override
  @JsonKey(name: 'in_slider')
  bool? get inSlider;
  @override
  int? get position;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsBannerCopyWith<_$_ResultsBanner> get copyWith =>
      throw _privateConstructorUsedError;
}
