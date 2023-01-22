// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:foodsberrymobile/store/global/user/user.dart';
import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cart.freezed.dart';
part 'cart.g.dart';

final StateProvider<Cart?> listCartState = StateProvider((ref) => null);

/*
*HIVE PART
*/
/* const String cartBoxName = "cartData";
Box<CartHive>? cartBox;

@HiveType(typeId: 0)
class CartHive {
  @HiveField(0)
  int? id;
  @HiveField(1)
  String? username;
  @HiveField(2)
  String? email;
  @HiveField(3)
  String? phone;
  @HiveField(4)
  String? workPhone;
  @HiveField(5)
  String? firstName;
  @HiveField(6)
  String? lastName;
  @HiveField(7)
  String? middleName;
  @HiveField(8)
  String? avatar;
  @HiveField(9)
  int? sex;
  @HiveField(10)
  UserExtended? extendedInfo;

  CartHive(
      this.id,
      this.username,
      this.email,
      this.phone,
      this.workPhone,
      this.firstName,
      this.lastName,
      this.middleName,
      this.avatar,
      this.sex,
      this.extendedInfo);
} */

/*
*FREEZE PART
*/
Cart? cart;
AddToCartRecive? cartRecive;

List<Cart>? itemsCarts = [];

Cart cartFromJson(String str) => Cart.fromJson(json.decode(str));

String cartToJson(Cart data) => json.encode(data.toJson());

@freezed
class Cart with _$Cart {
  const factory Cart({
    @Default(0) int? id,
    @JsonKey(name: 'delivery_address') @Default('') String? deliveryAddress,
    @JsonKey(name: 'order_sum') @Default(0) double? orderSum,
    @JsonKey(name: 'min_order_sum') @Default(0) double? minOrderSum,
    @JsonKey(name: 'pay_methods') @Default([]) List<PayMethods>? payMethods,
    @JsonKey(name: 'delivery_choices')
    @Default([])
        List<DeliveryChoices>? deliveryChoices,
    @Default(null) User? user,
    @JsonKey(name: 'status_display') @Default('') String? statusDisplay,
    @Default([]) List<Products>? products,
    @JsonKey(name: 'delivery_date_choices')
    @Default([])
        List<DeliveryDateChoices>? deliveryDateChoices,
    @JsonKey(name: 'discount_promocode_sum')
    @Default(0.0)
        double? discountPromocodeSum,
    @JsonKey(name: 'promocode_id') @Default('') String? promocodeId,
    @Default(ErrorDio(isError: false, errorMessage: '')) ErrorDio? errorDio,
  }) = _Cart;

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
}

@freezed
class PayMethods with _$PayMethods {
  const factory PayMethods({
    required int? id,
    @Default('') String? title,
  }) = _PayMethods;

  factory PayMethods.fromJson(Map<String, dynamic> json) =>
      _$PayMethodsFromJson(json);
}

@freezed
class ErrorDio with _$ErrorDio {
  const factory ErrorDio({
    required bool? isError,
    required String? errorMessage,
  }) = _ErrorDio;

  factory ErrorDio.fromJson(Map<String, dynamic> json) =>
      _$ErrorDioFromJson(json);
}

@freezed
class DeliveryChoices with _$DeliveryChoices {
  const factory DeliveryChoices({
    required int? choice,
    @Default('') String? name,
  }) = _DeliveryChoices;

  factory DeliveryChoices.fromJson(Map<String, dynamic> json) =>
      _$DeliveryChoicesFromJson(json);
}

@freezed
class DeliveryDateChoices with _$DeliveryDateChoices {
  const factory DeliveryDateChoices({
    @Default('') String? key,
    @Default('') String? display,
  }) = _DeliveryDateChoices;

  factory DeliveryDateChoices.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDateChoicesFromJson(json);
}

@freezed
class AddToCartRecive with _$AddToCartRecive {
  const factory AddToCartRecive({
    @JsonKey(name: 'cart_item_id') @Default(0) int? cartItemId,
    @JsonKey(name: 'items_count') @Default(0) int? itemsCount,
    @Default(0) int? sum,
  }) = _AddToCartRecive;

  factory AddToCartRecive.fromJson(Map<String, dynamic> json) =>
      _$AddToCartReciveFromJson(json);
}
