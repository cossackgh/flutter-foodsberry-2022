import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories.freezed.dart';
part 'categories.g.dart';

List<ResultsCategories>? allCategories;

@freezed
class Categories with _$Categories {
  const factory Categories({
    required List<ResultsCategories> data,
  }) = _Categories;
  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);
}

@freezed
class SubCategories with _$SubCategories {
  const factory SubCategories({
    required List<ResultsCategories> child,
  }) = _SubCategories;
  factory SubCategories.fromJson(Map<String, dynamic> json) =>
      _$SubCategoriesFromJson(json);
}

@freezed
class ResultsCategories with _$ResultsCategories {
  const factory ResultsCategories(
      {required int? id,
      required String? slug,
      required String? name,
      @JsonKey(name: 'word_split')
          required bool? wordSplit,
      @JsonKey(name: 'active_icon')
          required String? activeIcon,
      @JsonKey(name: 'nonactive_icon')
          required String? nonactiveIcon,
      @JsonKey(name: 'active_image')
          required String? activeImage,
      @JsonKey(name: 'nonactive_image')
          required String? nonactiveImage,
      @Default([])
          List<ChildCat>? child,
      @JsonKey(name: 'is_horizontal')
          required bool? isHorizontal,
      @JsonKey(name: 'mobile_text_color')
          required String? mobileTextColor,
      @JsonKey(name: 'mobile_background_color')
          required String? mobileBackgroundColor,
      @JsonKey(name: 'mobile_active_text_color')
          required String? mobileActiveTextColor,
      @JsonKey(name: 'mobile_inactive_text_color')
          required String? mobileInactiveTextColor}) = _ResultsCategories;

  factory ResultsCategories.fromJson(Map<String, dynamic> json) =>
      _$ResultsCategoriesFromJson(json);
}

@freezed
class ChildCat with _$ChildCat {
  const factory ChildCat({
    required int? id,
    required String? slug,
    required String? name,
    @JsonKey(name: 'word_split') required bool? wordSplit,
    @JsonKey(name: 'active_icon') required String? activeIcon,
    @JsonKey(name: 'nonactive_icon') required String? nonactiveIcon,
    @JsonKey(name: 'active_image') required String? activeImage,
    @JsonKey(name: 'nonactive_image') required String? nonactiveImage,
    required bool? child,
    @JsonKey(name: 'is_horizontal') required bool? isHorizontal,
    @JsonKey(name: 'mobile_text_color') required String? mobileTextColor,
    @JsonKey(name: 'mobile_background_color')
        required String? mobileBackgroundColor,
    @JsonKey(name: 'mobile_active_text_color')
        required String? mobileActiveTextColor,
    @JsonKey(name: 'mobile_inactive_text_color')
        required String? mobileInactiveTextColor,
  }) = _ChildCat;

  factory ChildCat.fromJson(Map<String, dynamic> json) =>
      _$ChildCatFromJson(json);
}

/* @freezed
class ResultsCategories with _$ResultsCategories {
  const factory ResultsCategories(
      {required int id,
      required String slug,
      required String name,
      required bool word_split,
      required String active_icon,
      required String nonactive_icon,
      required String active_image,
      required String nonactive_image,
      required List<ChildCategories> child,
      required String is_horizontal,
      required String mobile_text_color,
      required String mobile_background_color,
      required String mobile_active_text_color,
      required String mobile_inactive_text_color}) = _ResultsCategories;

  factory ResultsCategories.fromJson(Map<String, dynamic> json) =>
      _$ResultsCategoriesFromJson(json);
}
 */