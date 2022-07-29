// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_properties.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Properties _$PropertiesFromJson(Map<String, dynamic> json) {
  return _Properties.fromJson(json);
}

/// @nodoc
mixin _$Properties {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertiesCopyWith<Properties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertiesCopyWith<$Res> {
  factory $PropertiesCopyWith(
          Properties value, $Res Function(Properties) then) =
      _$PropertiesCopyWithImpl<$Res>;
  $Res call({int? id, String? name, String? value});
}

/// @nodoc
class _$PropertiesCopyWithImpl<$Res> implements $PropertiesCopyWith<$Res> {
  _$PropertiesCopyWithImpl(this._value, this._then);

  final Properties _value;
  // ignore: unused_field
  final $Res Function(Properties) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PropertiesCopyWith<$Res>
    implements $PropertiesCopyWith<$Res> {
  factory _$$_PropertiesCopyWith(
          _$_Properties value, $Res Function(_$_Properties) then) =
      __$$_PropertiesCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? name, String? value});
}

/// @nodoc
class __$$_PropertiesCopyWithImpl<$Res> extends _$PropertiesCopyWithImpl<$Res>
    implements _$$_PropertiesCopyWith<$Res> {
  __$$_PropertiesCopyWithImpl(
      _$_Properties _value, $Res Function(_$_Properties) _then)
      : super(_value, (v) => _then(v as _$_Properties));

  @override
  _$_Properties get _value => super._value as _$_Properties;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? value = freezed,
  }) {
    return _then(_$_Properties(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Properties implements _Properties {
  _$_Properties({required this.id, this.name = '', this.value = ''});

  factory _$_Properties.fromJson(Map<String, dynamic> json) =>
      _$$_PropertiesFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? value;

  @override
  String toString() {
    return 'Properties(id: $id, name: $name, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Properties &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PropertiesCopyWith<_$_Properties> get copyWith =>
      __$$_PropertiesCopyWithImpl<_$_Properties>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PropertiesToJson(
      this,
    );
  }
}

abstract class _Properties implements Properties {
  factory _Properties(
      {required final int? id,
      final String? name,
      final String? value}) = _$_Properties;

  factory _Properties.fromJson(Map<String, dynamic> json) =
      _$_Properties.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get value;
  @override
  @JsonKey(ignore: true)
  _$$_PropertiesCopyWith<_$_Properties> get copyWith =>
      throw _privateConstructorUsedError;
}
