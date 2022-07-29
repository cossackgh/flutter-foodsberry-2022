// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Images _$ImagesFromJson(Map<String, dynamic> json) {
  return _Images.fromJson(json);
}

/// @nodoc
mixin _$Images {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_base')
  bool? get isBase => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImagesCopyWith<Images> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res>;
  $Res call({int? id, String? image, @JsonKey(name: 'is_base') bool? isBase});
}

/// @nodoc
class _$ImagesCopyWithImpl<$Res> implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  final Images _value;
  // ignore: unused_field
  final $Res Function(Images) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isBase = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isBase: isBase == freezed
          ? _value.isBase
          : isBase // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$$_ImagesCopyWith(_$_Images value, $Res Function(_$_Images) then) =
      __$$_ImagesCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? image, @JsonKey(name: 'is_base') bool? isBase});
}

/// @nodoc
class __$$_ImagesCopyWithImpl<$Res> extends _$ImagesCopyWithImpl<$Res>
    implements _$$_ImagesCopyWith<$Res> {
  __$$_ImagesCopyWithImpl(_$_Images _value, $Res Function(_$_Images) _then)
      : super(_value, (v) => _then(v as _$_Images));

  @override
  _$_Images get _value => super._value as _$_Images;

  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? isBase = freezed,
  }) {
    return _then(_$_Images(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      isBase: isBase == freezed
          ? _value.isBase
          : isBase // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Images implements _Images {
  _$_Images(
      {required this.id,
      this.image = '',
      @JsonKey(name: 'is_base') required this.isBase});

  factory _$_Images.fromJson(Map<String, dynamic> json) =>
      _$$_ImagesFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? image;
  @override
  @JsonKey(name: 'is_base')
  final bool? isBase;

  @override
  String toString() {
    return 'Images(id: $id, image: $image, isBase: $isBase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Images &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.isBase, isBase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(isBase));

  @JsonKey(ignore: true)
  @override
  _$$_ImagesCopyWith<_$_Images> get copyWith =>
      __$$_ImagesCopyWithImpl<_$_Images>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImagesToJson(
      this,
    );
  }
}

abstract class _Images implements Images {
  factory _Images(
      {required final int? id,
      final String? image,
      @JsonKey(name: 'is_base') required final bool? isBase}) = _$_Images;

  factory _Images.fromJson(Map<String, dynamic> json) = _$_Images.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  @JsonKey(name: 'is_base')
  bool? get isBase;
  @override
  @JsonKey(ignore: true)
  _$$_ImagesCopyWith<_$_Images> get copyWith =>
      throw _privateConstructorUsedError;
}
