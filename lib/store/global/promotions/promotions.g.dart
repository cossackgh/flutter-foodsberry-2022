// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Promotion _$$_PromotionFromJson(Map<String, dynamic> json) => _$_Promotion(
      results: (json['results'] as List<dynamic>)
          .map((e) => ResultsPromotion.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PromotionToJson(_$_Promotion instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

_$_ResultsPromotion _$$_ResultsPromotionFromJson(Map<String, dynamic> json) =>
    _$_ResultsPromotion(
      id: json['id'] as int,
      dateFrom: json['date_from'] as String?,
      dateTo: json['date_to'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      image: json['image'] as String?,
      summary: json['summary'] as String?,
    );

Map<String, dynamic> _$$_ResultsPromotionToJson(_$_ResultsPromotion instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date_from': instance.dateFrom,
      'date_to': instance.dateTo,
      'title': instance.title,
      'body': instance.body,
      'image': instance.image,
      'summary': instance.summary,
    };
