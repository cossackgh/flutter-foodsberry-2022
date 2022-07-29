// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AuthHiveAdapter extends TypeAdapter<AuthHive> {
  @override
  final int typeId = 1;

  @override
  AuthHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AuthHive(
      fields[0] as String?,
      fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AuthHive obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.error);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AuthHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Auth _$$_AuthFromJson(Map<String, dynamic> json) => _$_Auth(
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
    );

Map<String, dynamic> _$$_AuthToJson(_$_Auth instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };
