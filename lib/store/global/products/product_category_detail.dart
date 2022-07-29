import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category_detail.freezed.dart';
part 'product_category_detail.g.dart';

@freezed
class CategoryDetail with _$CategoryDetail {
  CategoryDetail._();
  factory CategoryDetail({
    @Default(-1) int? id,
    @Default('') String? name,
  }) = _CategoryDetail;

  factory CategoryDetail.blank() => CategoryDetail(id: -1, name: '');
  factory CategoryDetail.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailFromJson(json);
}
