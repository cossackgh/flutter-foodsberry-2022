// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilterProducts _$$_FilterProductsFromJson(Map<String, dynamic> json) =>
    _$_FilterProducts(
      category: json['category'] as int? ?? null,
      priceMin: (json['price_min'] as num?)?.toDouble() ?? null,
      priceMax: (json['price_max'] as num?)?.toDouble() ?? null,
      isFavorites: json['is_favorites'] as bool? ?? null,
      search: json['search'] as String? ?? null,
      promotions: json['promotions'] as int? ?? null,
      isBuyerChoice: json['is_buyer_choice'] as bool? ?? null,
      recomPopular: json['recom_popular'] as bool? ?? null,
      recomLike: json['recom_like'] as bool? ?? null,
      recomSale: json['recom_sale'] as bool? ?? null,
      recomLook: json['recom_look'] as bool? ?? null,
      pageSize: json['page_size'] as int? ?? null,
      page: json['page'] as int? ?? null,
    );

Map<String, dynamic> _$$_FilterProductsToJson(_$_FilterProducts instance) =>
    <String, dynamic>{
      'category': instance.category,
      'price_min': instance.priceMin,
      'price_max': instance.priceMax,
      'is_favorites': instance.isFavorites,
      'search': instance.search,
      'promotions': instance.promotions,
      'is_buyer_choice': instance.isBuyerChoice,
      'recom_popular': instance.recomPopular,
      'recom_like': instance.recomLike,
      'recom_sale': instance.recomSale,
      'recom_look': instance.recomLook,
      'page_size': instance.pageSize,
      'page': instance.page,
    };
