// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'promotions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Promotion _$PromotionFromJson(Map<String, dynamic> json) {
  return _Promotion.fromJson(json);
}

/// @nodoc
mixin _$Promotion {
  List<ResultsPromotion> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromotionCopyWith<Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCopyWith<$Res> {
  factory $PromotionCopyWith(Promotion value, $Res Function(Promotion) then) =
      _$PromotionCopyWithImpl<$Res>;
  $Res call({List<ResultsPromotion> results});
}

/// @nodoc
class _$PromotionCopyWithImpl<$Res> implements $PromotionCopyWith<$Res> {
  _$PromotionCopyWithImpl(this._value, this._then);

  final Promotion _value;
  // ignore: unused_field
  final $Res Function(Promotion) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsPromotion>,
    ));
  }
}

/// @nodoc
abstract class _$$_PromotionCopyWith<$Res> implements $PromotionCopyWith<$Res> {
  factory _$$_PromotionCopyWith(
          _$_Promotion value, $Res Function(_$_Promotion) then) =
      __$$_PromotionCopyWithImpl<$Res>;
  @override
  $Res call({List<ResultsPromotion> results});
}

/// @nodoc
class __$$_PromotionCopyWithImpl<$Res> extends _$PromotionCopyWithImpl<$Res>
    implements _$$_PromotionCopyWith<$Res> {
  __$$_PromotionCopyWithImpl(
      _$_Promotion _value, $Res Function(_$_Promotion) _then)
      : super(_value, (v) => _then(v as _$_Promotion));

  @override
  _$_Promotion get _value => super._value as _$_Promotion;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_Promotion(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsPromotion>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Promotion implements _Promotion {
  const _$_Promotion({required final List<ResultsPromotion> results})
      : _results = results;

  factory _$_Promotion.fromJson(Map<String, dynamic> json) =>
      _$$_PromotionFromJson(json);

  final List<ResultsPromotion> _results;
  @override
  List<ResultsPromotion> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'Promotion(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Promotion &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_PromotionCopyWith<_$_Promotion> get copyWith =>
      __$$_PromotionCopyWithImpl<_$_Promotion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PromotionToJson(
      this,
    );
  }
}

abstract class _Promotion implements Promotion {
  const factory _Promotion({required final List<ResultsPromotion> results}) =
      _$_Promotion;

  factory _Promotion.fromJson(Map<String, dynamic> json) =
      _$_Promotion.fromJson;

  @override
  List<ResultsPromotion> get results;
  @override
  @JsonKey(ignore: true)
  _$$_PromotionCopyWith<_$_Promotion> get copyWith =>
      throw _privateConstructorUsedError;
}

ResultsPromotion _$ResultsPromotionFromJson(Map<String, dynamic> json) {
  return _ResultsPromotion.fromJson(json);
}

/// @nodoc
mixin _$ResultsPromotion {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_from')
  String? get dateFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_to')
  String? get dateTo => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get summary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsPromotionCopyWith<ResultsPromotion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsPromotionCopyWith<$Res> {
  factory $ResultsPromotionCopyWith(
          ResultsPromotion value, $Res Function(ResultsPromotion) then) =
      _$ResultsPromotionCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'date_from') String? dateFrom,
      @JsonKey(name: 'date_to') String? dateTo,
      String? title,
      String? body,
      String? image,
      String? summary});
}

/// @nodoc
class _$ResultsPromotionCopyWithImpl<$Res>
    implements $ResultsPromotionCopyWith<$Res> {
  _$ResultsPromotionCopyWithImpl(this._value, this._then);

  final ResultsPromotion _value;
  // ignore: unused_field
  final $Res Function(ResultsPromotion) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
    Object? summary = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultsPromotionCopyWith<$Res>
    implements $ResultsPromotionCopyWith<$Res> {
  factory _$$_ResultsPromotionCopyWith(
          _$_ResultsPromotion value, $Res Function(_$_ResultsPromotion) then) =
      __$$_ResultsPromotionCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'date_from') String? dateFrom,
      @JsonKey(name: 'date_to') String? dateTo,
      String? title,
      String? body,
      String? image,
      String? summary});
}

/// @nodoc
class __$$_ResultsPromotionCopyWithImpl<$Res>
    extends _$ResultsPromotionCopyWithImpl<$Res>
    implements _$$_ResultsPromotionCopyWith<$Res> {
  __$$_ResultsPromotionCopyWithImpl(
      _$_ResultsPromotion _value, $Res Function(_$_ResultsPromotion) _then)
      : super(_value, (v) => _then(v as _$_ResultsPromotion));

  @override
  _$_ResultsPromotion get _value => super._value as _$_ResultsPromotion;

  @override
  $Res call({
    Object? id = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? image = freezed,
    Object? summary = freezed,
  }) {
    return _then(_$_ResultsPromotion(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultsPromotion implements _ResultsPromotion {
  const _$_ResultsPromotion(
      {required this.id,
      @JsonKey(name: 'date_from') required this.dateFrom,
      @JsonKey(name: 'date_to') required this.dateTo,
      required this.title,
      required this.body,
      required this.image,
      required this.summary});

  factory _$_ResultsPromotion.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsPromotionFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'date_from')
  final String? dateFrom;
  @override
  @JsonKey(name: 'date_to')
  final String? dateTo;
  @override
  final String? title;
  @override
  final String? body;
  @override
  final String? image;
  @override
  final String? summary;

  @override
  String toString() {
    return 'ResultsPromotion(id: $id, dateFrom: $dateFrom, dateTo: $dateTo, title: $title, body: $body, image: $image, summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultsPromotion &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.dateFrom, dateFrom) &&
            const DeepCollectionEquality().equals(other.dateTo, dateTo) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.summary, summary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dateFrom),
      const DeepCollectionEquality().hash(dateTo),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(summary));

  @JsonKey(ignore: true)
  @override
  _$$_ResultsPromotionCopyWith<_$_ResultsPromotion> get copyWith =>
      __$$_ResultsPromotionCopyWithImpl<_$_ResultsPromotion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsPromotionToJson(
      this,
    );
  }
}

abstract class _ResultsPromotion implements ResultsPromotion {
  const factory _ResultsPromotion(
      {required final int id,
      @JsonKey(name: 'date_from') required final String? dateFrom,
      @JsonKey(name: 'date_to') required final String? dateTo,
      required final String? title,
      required final String? body,
      required final String? image,
      required final String? summary}) = _$_ResultsPromotion;

  factory _ResultsPromotion.fromJson(Map<String, dynamic> json) =
      _$_ResultsPromotion.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'date_from')
  String? get dateFrom;
  @override
  @JsonKey(name: 'date_to')
  String? get dateTo;
  @override
  String? get title;
  @override
  String? get body;
  @override
  String? get image;
  @override
  String? get summary;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsPromotionCopyWith<_$_ResultsPromotion> get copyWith =>
      throw _privateConstructorUsedError;
}
