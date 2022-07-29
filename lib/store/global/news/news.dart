import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

final StateProvider<List<ResultsNews>?> listNewsState =
    StateProvider((ref) => null);

List<ResultsNews>? allNews;
ResultsNews? currentNews;

@freezed
class News with _$News {
  const factory News({
    required List<ResultsNews> results,
  }) = _News;
  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}

@freezed
class ResultsNews with _$ResultsNews {
  const factory ResultsNews(
          {required int id,
          @JsonKey(name: 'meta_title') required String metaTitle,
          @JsonKey(name: 'meta_keywords') required String metaKeywords,
          @JsonKey(name: 'meta_description') required String metaDescription,
          @JsonKey(name: 'seo_header') required String seoHeader,
          @JsonKey(name: 'seo_caption') required String seoCaption,
          @JsonKey(name: 'seo_text') required String seoText,
          @JsonKey(name: 'extra_info') required String extraInfo,
          @JsonKey(name: 'active_from') required String activeFrom,
          required String title,
          required String slug,
          required String summary,
          required String image,
          required String modified,
          required bool published,
          required String body,
          @JsonKey(name: 'show_on_main') required bool showOnMain,
          @JsonKey(name: 'rendered_body') required String renderedBody}) =
      _ResultsNews;

  factory ResultsNews.fromJson(Map<String, dynamic> json) =>
      _$ResultsNewsFromJson(json);
}
