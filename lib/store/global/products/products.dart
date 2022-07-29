import 'package:foodsberrymobile/store/global/products/product_category_detail.dart';
import 'package:foodsberrymobile/store/global/products/product_images.dart';
import 'package:foodsberrymobile/store/global/products/product_properties.dart';
import 'package:foodsberrymobile/store/global/products/product_sku.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products.freezed.dart';
part 'products.g.dart';

List<Products>? allProducts = [];
List<Products>? filteredProducts = [];
List<Products>? allFavoritesProducts = [];
List<Products>? allNewProducts = [];
Products? selectProduct;

List<Products>? mockProducts = [
  Products(
      id: 1002665,
      name: "Форель радужная непотрошеная охлажденная, вес",
      image:
          "https://foodsberry.ru/upload/goods/images/forel-raduzhnaya-ohlazhdennaya-ves_15423639.jpg",
      images: [
        Images(
            id: 1002665,
            image:
                "https://foodsberry.ru/upload/goods/images/forel-raduzhnaya-ohlazhdennaya-ves_15423639.jpg",
            isBase: true),
      ],
      properties: [],
      price: 2200.0,
      priceOld: 0.0,
      productInCart: 0,
      code: "1002665",
      measureInfo: "Весовой (1,5кг - 2кг)",
      multiplier: 2.0,
      isFavorite: false,
      cartItemId: 0,
      category: 86,
      categoryDetail: CategoryDetail(id: 86, name: 'Рыба свежая охлажденная'),
      rest: 20.0,
      isWholesale: false,
      basePrice: 1100.00,
      basePriceOld: null,
      sku: [
        Sku(
            lot: "min",
            price: 2200.0,
            priceOld: 0.0,
            basePrice: 1100.0,
            basePriceOld: 0.0,
            measureInfo: "Весовой (1,5кг - 2кг)",
            issetInCart: false,
            multiplier: 2.0),
      ]),
];

@freezed
class Products with _$Products {
  factory Products({
    @Default(-1) int? id,
    @Default('') String? name,
    @Default(-1) int? category,
    @Default('') String? image,
    @Default([]) List<Images> images,
    @Default([]) List<Properties> properties,
    @Default(0.00) double? price,
    @Default(0.00) @JsonKey(name: 'price_old') double? priceOld,
    @Default(0) @JsonKey(name: 'product_in_cart') int? productInCart,
    @Default('') String? code,
    @Default('') @JsonKey(name: 'measure_info') String? measureInfo,
    @Default('') String? measure,
    @Default(0.00) double? multiplier,
    @Default(0.00) double? rest,
    @Default(true) @JsonKey(name: 'is_favorite') bool? isFavorite,
    @Default(-1) @JsonKey(name: 'cart_item_id') int? cartItemId,
    @JsonKey(name: 'category_detail') CategoryDetail? categoryDetail,
    @Default(false) @JsonKey(name: 'is_wholesale') bool? isWholesale,
    @Default(0.00) @JsonKey(name: 'base_price') double? basePrice,
    @Default(0.00) @JsonKey(name: 'base_price_old') double? basePriceOld,
    @Default('') String? url,
    @Default('') String? description,
    @Default(0.00) double? discount,
    @Default([]) List<Sku>? sku,
    //@Default([]) List<Sku.copyWith(isInCart:Sku.productInCart==0?false:tru)>? sku,
  }) = _Products;

  factory Products.fromJson(Map<String, dynamic> json) =>
      _$ProductsFromJson(json);
}
