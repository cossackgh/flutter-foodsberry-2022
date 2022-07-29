// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Products _$$_ProductsFromJson(Map<String, dynamic> json) => _$_Products(
      id: json['id'] as int? ?? -1,
      name: json['name'] as String? ?? '',
      category: json['category'] as int? ?? -1,
      image: json['image'] as String? ?? '',
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      properties: (json['properties'] as List<dynamic>?)
              ?.map((e) => Properties.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      price: (json['price'] as num?)?.toDouble() ?? 0.00,
      priceOld: (json['price_old'] as num?)?.toDouble() ?? 0.00,
      productInCart: json['product_in_cart'] as int? ?? 0,
      code: json['code'] as String? ?? '',
      measureInfo: json['measure_info'] as String? ?? '',
      measure: json['measure'] as String? ?? '',
      multiplier: (json['multiplier'] as num?)?.toDouble() ?? 0.00,
      rest: (json['rest'] as num?)?.toDouble() ?? 0.00,
      isFavorite: json['is_favorite'] as bool? ?? false,
      cartItemId: json['cart_item_id'] as int? ?? -1,
      categoryDetail: json['category_detail'] == null
          ? null
          : CategoryDetail.fromJson(
              json['category_detail'] as Map<String, dynamic>),
      isWholesale: json['is_wholesale'] as bool? ?? false,
      basePrice: (json['base_price'] as num?)?.toDouble() ?? 0.00,
      basePriceOld: (json['base_price_old'] as num?)?.toDouble() ?? 0.00,
      url: json['url'] as String? ?? '',
      description: json['description'] as String? ?? '',
      discount: (json['discount'] as num?)?.toDouble() ?? 0.00,
      sku: (json['sku'] as List<dynamic>?)
              ?.map((e) => Sku.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductsToJson(_$_Products instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'image': instance.image,
      'images': instance.images,
      'properties': instance.properties,
      'price': instance.price,
      'price_old': instance.priceOld,
      'product_in_cart': instance.productInCart,
      'code': instance.code,
      'measure_info': instance.measureInfo,
      'measure': instance.measure,
      'multiplier': instance.multiplier,
      'rest': instance.rest,
      'is_favorite': instance.isFavorite,
      'cart_item_id': instance.cartItemId,
      'category_detail': instance.categoryDetail,
      'is_wholesale': instance.isWholesale,
      'base_price': instance.basePrice,
      'base_price_old': instance.basePriceOld,
      'url': instance.url,
      'description': instance.description,
      'discount': instance.discount,
      'sku': instance.sku,
    };
