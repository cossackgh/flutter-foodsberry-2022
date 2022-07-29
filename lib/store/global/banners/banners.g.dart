// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banners.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Banner _$$_BannerFromJson(Map<String, dynamic> json) => _$_Banner(
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsBanner.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BannerToJson(_$_Banner instance) => <String, dynamic>{
      'results': instance.results,
    };

_$_ResultsBanner _$$_ResultsBannerFromJson(Map<String, dynamic> json) =>
    _$_ResultsBanner(
      id: json['id'] as int,
      image: json['image'] as String?,
      url: json['url'] as String?,
      slug: json['slug'] as String?,
      inSlider: json['in_slider'] as bool?,
      position: json['position'] as int?,
    );

Map<String, dynamic> _$$_ResultsBannerToJson(_$_ResultsBanner instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'url': instance.url,
      'slug': instance.slug,
      'in_slider': instance.inSlider,
      'position': instance.position,
    };
