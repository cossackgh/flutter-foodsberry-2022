// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cart _$$_CartFromJson(Map<String, dynamic> json) => _$_Cart(
      id: json['id'] as int? ?? 0,
      deliveryAddress: json['delivery_address'] as String? ?? '',
      orderSum: (json['order_sum'] as num?)?.toDouble() ?? 0,
      minOrderSum: (json['min_order_sum'] as num?)?.toDouble() ?? 0,
      payMethods: (json['pay_methods'] as List<dynamic>?)
              ?.map((e) => PayMethods.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      deliveryChoices: (json['delivery_choices'] as List<dynamic>?)
              ?.map((e) => DeliveryChoices.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      statusDisplay: json['status_display'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Products.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      deliveryDateChoices: (json['delivery_date_choices'] as List<dynamic>?)
              ?.map((e) =>
                  DeliveryDateChoices.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      discountPromocodeSum:
          (json['discount_promocode_sum'] as num?)?.toDouble() ?? 0.0,
      promocodeId: json['promocode_id'] as String? ?? '',
      errorDio: json['errorDio'] == null
          ? const ErrorDio(isError: false, errorMessage: '')
          : ErrorDio.fromJson(json['errorDio'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CartToJson(_$_Cart instance) => <String, dynamic>{
      'id': instance.id,
      'delivery_address': instance.deliveryAddress,
      'order_sum': instance.orderSum,
      'min_order_sum': instance.minOrderSum,
      'pay_methods': instance.payMethods,
      'delivery_choices': instance.deliveryChoices,
      'user': instance.user,
      'status_display': instance.statusDisplay,
      'products': instance.products,
      'delivery_date_choices': instance.deliveryDateChoices,
      'discount_promocode_sum': instance.discountPromocodeSum,
      'promocode_id': instance.promocodeId,
      'errorDio': instance.errorDio,
    };

_$_PayMethods _$$_PayMethodsFromJson(Map<String, dynamic> json) =>
    _$_PayMethods(
      id: json['id'] as int?,
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$$_PayMethodsToJson(_$_PayMethods instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
    };

_$_ErrorDio _$$_ErrorDioFromJson(Map<String, dynamic> json) => _$_ErrorDio(
      isError: json['isError'] as bool?,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$$_ErrorDioToJson(_$_ErrorDio instance) =>
    <String, dynamic>{
      'isError': instance.isError,
      'errorMessage': instance.errorMessage,
    };

_$_DeliveryChoices _$$_DeliveryChoicesFromJson(Map<String, dynamic> json) =>
    _$_DeliveryChoices(
      choice: json['choice'] as int?,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_DeliveryChoicesToJson(_$_DeliveryChoices instance) =>
    <String, dynamic>{
      'choice': instance.choice,
      'name': instance.name,
    };

_$_DeliveryDateChoices _$$_DeliveryDateChoicesFromJson(
        Map<String, dynamic> json) =>
    _$_DeliveryDateChoices(
      key: json['key'] as String? ?? '',
      display: json['display'] as String? ?? '',
    );

Map<String, dynamic> _$$_DeliveryDateChoicesToJson(
        _$_DeliveryDateChoices instance) =>
    <String, dynamic>{
      'key': instance.key,
      'display': instance.display,
    };

_$_AddToCartRecive _$$_AddToCartReciveFromJson(Map<String, dynamic> json) =>
    _$_AddToCartRecive(
      cartItemId: json['cart_item_id'] as int? ?? 0,
      itemsCount: json['items_count'] as int? ?? 0,
      sum: json['sum'] as int? ?? 0,
    );

Map<String, dynamic> _$$_AddToCartReciveToJson(_$_AddToCartRecive instance) =>
    <String, dynamic>{
      'cart_item_id': instance.cartItemId,
      'items_count': instance.itemsCount,
      'sum': instance.sum,
    };
