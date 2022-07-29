import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_images.freezed.dart';
part 'product_images.g.dart';

@freezed
class Images with _$Images {
  factory Images({
    required int? id,
    @Default('') String? image,
    @JsonKey(name: 'is_base') required bool? isBase,
  }) = _Images;

  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
