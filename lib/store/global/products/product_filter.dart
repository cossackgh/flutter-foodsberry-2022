import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:foodsberrymobile/store/global/products/products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_filter.freezed.dart';
part 'product_filter.g.dart';

final StateProvider<List<Products>?> listFilterPopular =
    StateProvider((ref) => []);
final StateProvider<List<Products>?> listFilterSale =
    StateProvider((ref) => []);
final StateProvider<List<Products>?> listFilterLike =
    StateProvider((ref) => []);
final StateProvider<List<Products>?> listFilterLook =
    StateProvider((ref) => []);

FilterProducts? filterProduct;

@freezed
class FilterProducts with _$FilterProducts {
  const FilterProducts._();

  factory FilterProducts({
    @Default(null) int? category,
    @Default(null) @JsonKey(name: 'price_min') double? priceMin,
    @Default(null) @JsonKey(name: 'price_max') double? priceMax,
    @Default(null) @JsonKey(name: 'is_favorites') bool? isFavorites,
    @Default(null) String? search,
    @Default(null) int? promotions,
    @Default(null) @JsonKey(name: 'is_buyer_choice') bool? isBuyerChoice,
    @Default(null) @JsonKey(name: 'recom_popular') bool? recomPopular,
    @Default(null) @JsonKey(name: 'recom_like') bool? recomLike,
    @Default(null) @JsonKey(name: 'recom_sale') bool? recomSale,
    @Default(null) @JsonKey(name: 'recom_look') bool? recomLook,
    @Default(null) @JsonKey(name: 'page_size') int? pageSize,
    @Default(null) int? page,
  }) = _FilterProducts;

  factory FilterProducts.fromJson(Map<String, dynamic> json) =>
      _$FilterProductsFromJson(json);

  @override
  String toString() {
    String? result = '';

    if (category != null) {
      result = result + "category=" + category.toString();
    }
    if (priceMin != null) {
      result = result + "&price_min=" + priceMin.toString();
    }
    if (priceMax != null) {
      result = result + "&price_max=" + priceMax.toString();
    }
    if (isFavorites != null) {
      result = result + "&is_favorites=" + isFavorites.toString();
    }
    if (search != null) {
      result = result + "&search=" + search!;
    }
    if (promotions != null) {
      result = result + "&promotions=" + promotions.toString();
    }
    if (isBuyerChoice != null) {
      result = result + "&is_buyer_choice=" + isBuyerChoice.toString();
    }
    if (recomPopular != null) {
      result = result + "&recom_popular=" + recomPopular.toString();
    }
    if (recomLike != null) {
      result = result + "&recom_like=" + recomLike.toString();
    }
    if (recomSale != null) {
      result = result + "&recom_sale=" + recomSale.toString();
    }
    if (recomLook != null) {
      result = result + "&recom_look=" + recomLook.toString();
    }
    if (pageSize != null) {
      result = result + "&page_size=" + pageSize.toString();
    }
    if (page != null) {
      result = result + "&page=" + page.toString();
    }
    return result;
  }

  void methodString() {
    print('hello world');
  }
}
