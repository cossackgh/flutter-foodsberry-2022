import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_sku.freezed.dart';
part 'product_sku.g.dart';

@freezed
class Sku with _$Sku {
  const Sku._();

  factory Sku({
    @Default('') String? lot,
    @Default(0.00) double? price,
    @JsonKey(name: 'price_old') @Default(0.00) double? priceOld,
    @JsonKey(name: 'base_price') @Default(0.00) double? basePrice,
    @JsonKey(name: 'base_price_old') @Default(0.00) double? basePriceOld,
    @JsonKey(name: 'measure_info') @Default('') String? measureInfo,
    @JsonKey(name: 'product_in_cart') @Default(0) int? productInCart,
    @JsonKey(name: 'isset_in_cart') bool? issetInCart,
    @Default(0.00) double? multiplier,
  }) = _Sku;
  void method() {
    print('hello world');
  }

  factory Sku.fromJson(Map<String, dynamic> json) => _$SkuFromJson(json);
}

/* class BooledIntConverter implements JsonConverter<bool?, int> {
  //const BooledIntConverter( {int? prodInCart});
  const BooledIntConverter();

  @override
  bool fromJson(int json) {
    try {
      return json == 0 ? false : true;
    } catch (e) {
      throw const FormatException();
    }
  }

  @override
  int toJson(bool? object) {
    return object == true ? 1 : 0;
  }
} */
/* @freezed
class IsInCart with _$IsInCart {
  const IsInCart._();
  const factory IsInCart(int productInCart) = _IsInCart;

  bool method() {
    print('hello world');
    return true;
  }
} */
