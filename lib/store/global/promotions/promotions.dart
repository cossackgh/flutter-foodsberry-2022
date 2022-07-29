import 'package:freezed_annotation/freezed_annotation.dart';

part 'promotions.freezed.dart';
part 'promotions.g.dart';

List<ResultsPromotion>? allPromotions;
ResultsPromotion? currentPromotion;

@freezed
class Promotion with _$Promotion {
  const factory Promotion({
    required List<ResultsPromotion> results,
  }) = _Promotion;
  factory Promotion.fromJson(Map<String, dynamic> json) =>
      _$PromotionFromJson(json);
}

@freezed
class ResultsPromotion with _$ResultsPromotion {
  const factory ResultsPromotion({
    required int id,
    @JsonKey(name: 'date_from') required String? dateFrom,
    @JsonKey(name: 'date_to') required String? dateTo,
    required String? title,
    required String? body,
    required String? image,
    required String? summary,
  }) = _ResultsPromotion;

  factory ResultsPromotion.fromJson(Map<String, dynamic> json) =>
      _$ResultsPromotionFromJson(json);
}
