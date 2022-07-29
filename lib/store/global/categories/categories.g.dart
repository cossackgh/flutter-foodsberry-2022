// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Categories _$$_CategoriesFromJson(Map<String, dynamic> json) =>
    _$_Categories(
      data: (json['data'] as List<dynamic>)
          .map((e) => ResultsCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CategoriesToJson(_$_Categories instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$_SubCategories _$$_SubCategoriesFromJson(Map<String, dynamic> json) =>
    _$_SubCategories(
      child: (json['child'] as List<dynamic>)
          .map((e) => ResultsCategories.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SubCategoriesToJson(_$_SubCategories instance) =>
    <String, dynamic>{
      'child': instance.child,
    };

_$_ResultsCategories _$$_ResultsCategoriesFromJson(Map<String, dynamic> json) =>
    _$_ResultsCategories(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      wordSplit: json['word_split'] as bool?,
      activeIcon: json['active_icon'] as String?,
      nonactiveIcon: json['nonactive_icon'] as String?,
      activeImage: json['active_image'] as String?,
      nonactiveImage: json['nonactive_image'] as String?,
      child: (json['child'] as List<dynamic>?)
              ?.map((e) => ChildCat.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isHorizontal: json['is_horizontal'] as bool?,
      mobileTextColor: json['mobile_text_color'] as String?,
      mobileBackgroundColor: json['mobile_background_color'] as String?,
      mobileActiveTextColor: json['mobile_active_text_color'] as String?,
      mobileInactiveTextColor: json['mobile_inactive_text_color'] as String?,
    );

Map<String, dynamic> _$$_ResultsCategoriesToJson(
        _$_ResultsCategories instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'word_split': instance.wordSplit,
      'active_icon': instance.activeIcon,
      'nonactive_icon': instance.nonactiveIcon,
      'active_image': instance.activeImage,
      'nonactive_image': instance.nonactiveImage,
      'child': instance.child,
      'is_horizontal': instance.isHorizontal,
      'mobile_text_color': instance.mobileTextColor,
      'mobile_background_color': instance.mobileBackgroundColor,
      'mobile_active_text_color': instance.mobileActiveTextColor,
      'mobile_inactive_text_color': instance.mobileInactiveTextColor,
    };

_$_ChildCat _$$_ChildCatFromJson(Map<String, dynamic> json) => _$_ChildCat(
      id: json['id'] as int?,
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      wordSplit: json['word_split'] as bool?,
      activeIcon: json['active_icon'] as String?,
      nonactiveIcon: json['nonactive_icon'] as String?,
      activeImage: json['active_image'] as String?,
      nonactiveImage: json['nonactive_image'] as String?,
      child: json['child'] as bool?,
      isHorizontal: json['is_horizontal'] as bool?,
      mobileTextColor: json['mobile_text_color'] as String?,
      mobileBackgroundColor: json['mobile_background_color'] as String?,
      mobileActiveTextColor: json['mobile_active_text_color'] as String?,
      mobileInactiveTextColor: json['mobile_inactive_text_color'] as String?,
    );

Map<String, dynamic> _$$_ChildCatToJson(_$_ChildCat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'slug': instance.slug,
      'name': instance.name,
      'word_split': instance.wordSplit,
      'active_icon': instance.activeIcon,
      'nonactive_icon': instance.nonactiveIcon,
      'active_image': instance.activeImage,
      'nonactive_image': instance.nonactiveImage,
      'child': instance.child,
      'is_horizontal': instance.isHorizontal,
      'mobile_text_color': instance.mobileTextColor,
      'mobile_background_color': instance.mobileBackgroundColor,
      'mobile_active_text_color': instance.mobileActiveTextColor,
      'mobile_inactive_text_color': instance.mobileInactiveTextColor,
    };
