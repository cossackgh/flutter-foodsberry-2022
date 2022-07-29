import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'banners.freezed.dart';
part 'banners.g.dart';

List<ResultsBanner>? allBanners;

final StateProvider<List<ResultsBanner>?> listBannersState =
    StateProvider((ref) => null);

@freezed
class Banner with _$Banner {
  const factory Banner({
    required List<ResultsBanner> results,
  }) = _Banner;
  factory Banner.fromJson(Map<String, dynamic> json) => _$BannerFromJson(json);
}

@freezed
class ResultsBanner with _$ResultsBanner {
  const factory ResultsBanner({
    required int id,
    required String? image,
    required String? url,
    required String? slug,
    @JsonKey(name: 'in_slider') required bool? inSlider,
    required int? position,
  }) = _ResultsBanner;

  factory ResultsBanner.fromJson(Map<String, dynamic> json) =>
      _$ResultsBannerFromJson(json);
}
