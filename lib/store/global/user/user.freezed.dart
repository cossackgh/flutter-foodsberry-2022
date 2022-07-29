// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'work_phone')
  String? get workPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'middle_name')
  String? get middleName => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;
  int? get sex => throw _privateConstructorUsedError;
  UserExtended? get extendedInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? phone,
      @JsonKey(name: 'work_phone') String? workPhone,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'middle_name') String? middleName,
      String? avatar,
      int? sex,
      UserExtended? extendedInfo});

  $UserExtendedCopyWith<$Res>? get extendedInfo;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? workPhone = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? avatar = freezed,
    Object? sex = freezed,
    Object? extendedInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      workPhone: workPhone == freezed
          ? _value.workPhone
          : workPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      extendedInfo: extendedInfo == freezed
          ? _value.extendedInfo
          : extendedInfo // ignore: cast_nullable_to_non_nullable
              as UserExtended?,
    ));
  }

  @override
  $UserExtendedCopyWith<$Res>? get extendedInfo {
    if (_value.extendedInfo == null) {
      return null;
    }

    return $UserExtendedCopyWith<$Res>(_value.extendedInfo!, (value) {
      return _then(_value.copyWith(extendedInfo: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? username,
      String? email,
      String? phone,
      @JsonKey(name: 'work_phone') String? workPhone,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'middle_name') String? middleName,
      String? avatar,
      int? sex,
      UserExtended? extendedInfo});

  @override
  $UserExtendedCopyWith<$Res>? get extendedInfo;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? workPhone = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? middleName = freezed,
    Object? avatar = freezed,
    Object? sex = freezed,
    Object? extendedInfo = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      workPhone: workPhone == freezed
          ? _value.workPhone
          : workPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      middleName: middleName == freezed
          ? _value.middleName
          : middleName // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int?,
      extendedInfo: extendedInfo == freezed
          ? _value.extendedInfo
          : extendedInfo // ignore: cast_nullable_to_non_nullable
              as UserExtended?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {this.id = -1,
      this.username = '',
      this.email = '',
      this.phone = '',
      @JsonKey(name: 'work_phone') this.workPhone = '',
      @JsonKey(name: 'first_name') this.firstName = '',
      @JsonKey(name: 'last_name') this.lastName = '',
      @JsonKey(name: 'middle_name') this.middleName = '',
      this.avatar = '',
      this.sex = 0,
      this.extendedInfo =
          const UserExtended(addressDelivery: [], payCard: [])});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey()
  final String? username;
  @override
  @JsonKey()
  final String? email;
  @override
  @JsonKey()
  final String? phone;
  @override
  @JsonKey(name: 'work_phone')
  final String? workPhone;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'middle_name')
  final String? middleName;
  @override
  @JsonKey()
  final String? avatar;
  @override
  @JsonKey()
  final int? sex;
  @override
  @JsonKey()
  final UserExtended? extendedInfo;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, phone: $phone, workPhone: $workPhone, firstName: $firstName, lastName: $lastName, middleName: $middleName, avatar: $avatar, sex: $sex, extendedInfo: $extendedInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.workPhone, workPhone) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.middleName, middleName) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality()
                .equals(other.extendedInfo, extendedInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(workPhone),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(middleName),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(extendedInfo));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {final int? id,
      final String? username,
      final String? email,
      final String? phone,
      @JsonKey(name: 'work_phone') final String? workPhone,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'middle_name') final String? middleName,
      final String? avatar,
      final int? sex,
      final UserExtended? extendedInfo}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  int? get id;
  @override
  String? get username;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'work_phone')
  String? get workPhone;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'middle_name')
  String? get middleName;
  @override
  String? get avatar;
  @override
  int? get sex;
  @override
  UserExtended? get extendedInfo;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

UserExtended _$UserExtendedFromJson(Map<String, dynamic> json) {
  return _UserExtended.fromJson(json);
}

/// @nodoc
mixin _$UserExtended {
  List<String?>? get addressDelivery => throw _privateConstructorUsedError;
  List<String?>? get payCard => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserExtendedCopyWith<UserExtended> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserExtendedCopyWith<$Res> {
  factory $UserExtendedCopyWith(
          UserExtended value, $Res Function(UserExtended) then) =
      _$UserExtendedCopyWithImpl<$Res>;
  $Res call({List<String?>? addressDelivery, List<String?>? payCard});
}

/// @nodoc
class _$UserExtendedCopyWithImpl<$Res> implements $UserExtendedCopyWith<$Res> {
  _$UserExtendedCopyWithImpl(this._value, this._then);

  final UserExtended _value;
  // ignore: unused_field
  final $Res Function(UserExtended) _then;

  @override
  $Res call({
    Object? addressDelivery = freezed,
    Object? payCard = freezed,
  }) {
    return _then(_value.copyWith(
      addressDelivery: addressDelivery == freezed
          ? _value.addressDelivery
          : addressDelivery // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      payCard: payCard == freezed
          ? _value.payCard
          : payCard // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserExtendedCopyWith<$Res>
    implements $UserExtendedCopyWith<$Res> {
  factory _$$_UserExtendedCopyWith(
          _$_UserExtended value, $Res Function(_$_UserExtended) then) =
      __$$_UserExtendedCopyWithImpl<$Res>;
  @override
  $Res call({List<String?>? addressDelivery, List<String?>? payCard});
}

/// @nodoc
class __$$_UserExtendedCopyWithImpl<$Res>
    extends _$UserExtendedCopyWithImpl<$Res>
    implements _$$_UserExtendedCopyWith<$Res> {
  __$$_UserExtendedCopyWithImpl(
      _$_UserExtended _value, $Res Function(_$_UserExtended) _then)
      : super(_value, (v) => _then(v as _$_UserExtended));

  @override
  _$_UserExtended get _value => super._value as _$_UserExtended;

  @override
  $Res call({
    Object? addressDelivery = freezed,
    Object? payCard = freezed,
  }) {
    return _then(_$_UserExtended(
      addressDelivery: addressDelivery == freezed
          ? _value._addressDelivery
          : addressDelivery // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
      payCard: payCard == freezed
          ? _value._payCard
          : payCard // ignore: cast_nullable_to_non_nullable
              as List<String?>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserExtended implements _UserExtended {
  const _$_UserExtended(
      {final List<String?>? addressDelivery = const [],
      final List<String?>? payCard = const []})
      : _addressDelivery = addressDelivery,
        _payCard = payCard;

  factory _$_UserExtended.fromJson(Map<String, dynamic> json) =>
      _$$_UserExtendedFromJson(json);

  final List<String?>? _addressDelivery;
  @override
  @JsonKey()
  List<String?>? get addressDelivery {
    final value = _addressDelivery;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String?>? _payCard;
  @override
  @JsonKey()
  List<String?>? get payCard {
    final value = _payCard;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserExtended(addressDelivery: $addressDelivery, payCard: $payCard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserExtended &&
            const DeepCollectionEquality()
                .equals(other._addressDelivery, _addressDelivery) &&
            const DeepCollectionEquality().equals(other._payCard, _payCard));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_addressDelivery),
      const DeepCollectionEquality().hash(_payCard));

  @JsonKey(ignore: true)
  @override
  _$$_UserExtendedCopyWith<_$_UserExtended> get copyWith =>
      __$$_UserExtendedCopyWithImpl<_$_UserExtended>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserExtendedToJson(
      this,
    );
  }
}

abstract class _UserExtended implements UserExtended {
  const factory _UserExtended(
      {final List<String?>? addressDelivery,
      final List<String?>? payCard}) = _$_UserExtended;

  factory _UserExtended.fromJson(Map<String, dynamic> json) =
      _$_UserExtended.fromJson;

  @override
  List<String?>? get addressDelivery;
  @override
  List<String?>? get payCard;
  @override
  @JsonKey(ignore: true)
  _$$_UserExtendedCopyWith<_$_UserExtended> get copyWith =>
      throw _privateConstructorUsedError;
}
