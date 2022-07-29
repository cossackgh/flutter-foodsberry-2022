// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_sku.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sku _$$_SkuFromJson(Map<String, dynamic> json) => _$_Sku(
      lot: json['lot'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0.00,
      priceOld: (json['price_old'] as num?)?.toDouble() ?? 0.00,
      basePrice: (json['base_price'] as num?)?.toDouble() ?? 0.00,
      basePriceOld: (json['base_price_old'] as num?)?.toDouble() ?? 0.00,
      measureInfo: json['measure_info'] as String? ?? '',
      productInCart: json['product_in_cart'] as int? ?? 0,
      issetInCart: json['isset_in_cart'] as bool?,
      multiplier: (json['multiplier'] as num?)?.toDouble() ?? 0.00,
    );

Map<String, dynamic> _$$_SkuToJson(_$_Sku instance) => <String, dynamic>{
      'lot': instance.lot,
      'price': instance.price,
      'price_old': instance.priceOld,
      'base_price': instance.basePrice,
      'base_price_old': instance.basePriceOld,
      'measure_info': instance.measureInfo,
      'product_in_cart': instance.productInCart,
      'isset_in_cart': instance.issetInCart,
      'multiplier': instance.multiplier,
    };
