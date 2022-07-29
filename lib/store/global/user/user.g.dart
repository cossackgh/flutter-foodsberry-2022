// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserHiveAdapter extends TypeAdapter<UserHive> {
  @override
  final int typeId = 0;

  @override
  UserHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserHive(
      fields[0] as int?,
      fields[1] as String?,
      fields[2] as String?,
      fields[3] as String?,
      fields[4] as String?,
      fields[5] as String?,
      fields[6] as String?,
      fields[7] as String?,
      fields[8] as String?,
      fields[9] as int?,
      fields[10] as UserExtended?,
    );
  }

  @override
  void write(BinaryWriter writer, UserHive obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.username)
      ..writeByte(2)
      ..write(obj.email)
      ..writeByte(3)
      ..write(obj.phone)
      ..writeByte(4)
      ..write(obj.workPhone)
      ..writeByte(5)
      ..write(obj.firstName)
      ..writeByte(6)
      ..write(obj.lastName)
      ..writeByte(7)
      ..write(obj.middleName)
      ..writeByte(8)
      ..write(obj.avatar)
      ..writeByte(9)
      ..write(obj.sex)
      ..writeByte(10)
      ..write(obj.extendedInfo);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int? ?? -1,
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      workPhone: json['work_phone'] as String? ?? '',
      firstName: json['first_name'] as String? ?? '',
      lastName: json['last_name'] as String? ?? '',
      middleName: json['middle_name'] as String? ?? '',
      avatar: json['avatar'] as String? ?? '',
      sex: json['sex'] as int? ?? 0,
      extendedInfo: json['extendedInfo'] == null
          ? const UserExtended(addressDelivery: [], payCard: [])
          : UserExtended.fromJson(json['extendedInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'work_phone': instance.workPhone,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'middle_name': instance.middleName,
      'avatar': instance.avatar,
      'sex': instance.sex,
      'extendedInfo': instance.extendedInfo,
    };

_$_UserExtended _$$_UserExtendedFromJson(Map<String, dynamic> json) =>
    _$_UserExtended(
      addressDelivery: (json['addressDelivery'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      payCard: (json['payCard'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserExtendedToJson(_$_UserExtended instance) =>
    <String, dynamic>{
      'addressDelivery': instance.addressDelivery,
      'payCard': instance.payCard,
    };
