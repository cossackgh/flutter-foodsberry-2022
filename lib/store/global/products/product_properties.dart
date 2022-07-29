import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_properties.freezed.dart';
part 'product_properties.g.dart';

@freezed
class Properties with _$Properties {
  factory Properties({
    required int? id,
    @Default('') String? name,
    @Default('') String? value,
  }) = _Properties;

  factory Properties.fromJson(Map<String, dynamic> json) =>
      _$PropertiesFromJson(json);
}
