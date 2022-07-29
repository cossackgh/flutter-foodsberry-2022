// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_News _$$_NewsFromJson(Map<String, dynamic> json) => _$_News(
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsNews.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NewsToJson(_$_News instance) => <String, dynamic>{
      'results': instance.results,
    };

_$_ResultsNews _$$_ResultsNewsFromJson(Map<String, dynamic> json) =>
    _$_ResultsNews(
      id: json['id'] as int,
      metaTitle: json['meta_title'] as String,
      metaKeywords: json['meta_keywords'] as String,
      metaDescription: json['meta_description'] as String,
      seoHeader: json['seo_header'] as String,
      seoCaption: json['seo_caption'] as String,
      seoText: json['seo_text'] as String,
      extraInfo: json['extra_info'] as String,
      activeFrom: json['active_from'] as String,
      title: json['title'] as String,
      slug: json['slug'] as String,
      summary: json['summary'] as String,
      image: json['image'] as String,
      modified: json['modified'] as String,
      published: json['published'] as bool,
      body: json['body'] as String,
      showOnMain: json['show_on_main'] as bool,
      renderedBody: json['rendered_body'] as String,
    );

Map<String, dynamic> _$$_ResultsNewsToJson(_$_ResultsNews instance) =>
    <String, dynamic>{
      'id': instance.id,
      'meta_title': instance.metaTitle,
      'meta_keywords': instance.metaKeywords,
      'meta_description': instance.metaDescription,
      'seo_header': instance.seoHeader,
      'seo_caption': instance.seoCaption,
      'seo_text': instance.seoText,
      'extra_info': instance.extraInfo,
      'active_from': instance.activeFrom,
      'title': instance.title,
      'slug': instance.slug,
      'summary': instance.summary,
      'image': instance.image,
      'modified': instance.modified,
      'published': instance.published,
      'body': instance.body,
      'show_on_main': instance.showOnMain,
      'rendered_body': instance.renderedBody,
    };
