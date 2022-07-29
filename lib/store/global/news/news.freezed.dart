// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  List<ResultsNews> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call({List<ResultsNews> results});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsNews>,
    ));
  }
}

/// @nodoc
abstract class _$$_NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$_NewsCopyWith(_$_News value, $Res Function(_$_News) then) =
      __$$_NewsCopyWithImpl<$Res>;
  @override
  $Res call({List<ResultsNews> results});
}

/// @nodoc
class __$$_NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$$_NewsCopyWith<$Res> {
  __$$_NewsCopyWithImpl(_$_News _value, $Res Function(_$_News) _then)
      : super(_value, (v) => _then(v as _$_News));

  @override
  _$_News get _value => super._value as _$_News;

  @override
  $Res call({
    Object? results = freezed,
  }) {
    return _then(_$_News(
      results: results == freezed
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultsNews>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_News implements _News {
  const _$_News({required final List<ResultsNews> results})
      : _results = results;

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  final List<ResultsNews> _results;
  @override
  List<ResultsNews> get results {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  String toString() {
    return 'News(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_News &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  _$$_NewsCopyWith<_$_News> get copyWith =>
      __$$_NewsCopyWithImpl<_$_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News({required final List<ResultsNews> results}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  List<ResultsNews> get results;
  @override
  @JsonKey(ignore: true)
  _$$_NewsCopyWith<_$_News> get copyWith => throw _privateConstructorUsedError;
}

ResultsNews _$ResultsNewsFromJson(Map<String, dynamic> json) {
  return _ResultsNews.fromJson(json);
}

/// @nodoc
mixin _$ResultsNews {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_title')
  String get metaTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_keywords')
  String get metaKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_description')
  String get metaDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'seo_header')
  String get seoHeader => throw _privateConstructorUsedError;
  @JsonKey(name: 'seo_caption')
  String get seoCaption => throw _privateConstructorUsedError;
  @JsonKey(name: 'seo_text')
  String get seoText => throw _privateConstructorUsedError;
  @JsonKey(name: 'extra_info')
  String get extraInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_from')
  String get activeFrom => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get modified => throw _privateConstructorUsedError;
  bool get published => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_on_main')
  bool get showOnMain => throw _privateConstructorUsedError;
  @JsonKey(name: 'rendered_body')
  String get renderedBody => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultsNewsCopyWith<ResultsNews> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsNewsCopyWith<$Res> {
  factory $ResultsNewsCopyWith(
          ResultsNews value, $Res Function(ResultsNews) then) =
      _$ResultsNewsCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'meta_title') String metaTitle,
      @JsonKey(name: 'meta_keywords') String metaKeywords,
      @JsonKey(name: 'meta_description') String metaDescription,
      @JsonKey(name: 'seo_header') String seoHeader,
      @JsonKey(name: 'seo_caption') String seoCaption,
      @JsonKey(name: 'seo_text') String seoText,
      @JsonKey(name: 'extra_info') String extraInfo,
      @JsonKey(name: 'active_from') String activeFrom,
      String title,
      String slug,
      String summary,
      String image,
      String modified,
      bool published,
      String body,
      @JsonKey(name: 'show_on_main') bool showOnMain,
      @JsonKey(name: 'rendered_body') String renderedBody});
}

/// @nodoc
class _$ResultsNewsCopyWithImpl<$Res> implements $ResultsNewsCopyWith<$Res> {
  _$ResultsNewsCopyWithImpl(this._value, this._then);

  final ResultsNews _value;
  // ignore: unused_field
  final $Res Function(ResultsNews) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? metaTitle = freezed,
    Object? metaKeywords = freezed,
    Object? metaDescription = freezed,
    Object? seoHeader = freezed,
    Object? seoCaption = freezed,
    Object? seoText = freezed,
    Object? extraInfo = freezed,
    Object? activeFrom = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? summary = freezed,
    Object? image = freezed,
    Object? modified = freezed,
    Object? published = freezed,
    Object? body = freezed,
    Object? showOnMain = freezed,
    Object? renderedBody = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      metaTitle: metaTitle == freezed
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      metaKeywords: metaKeywords == freezed
          ? _value.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String,
      metaDescription: metaDescription == freezed
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      seoHeader: seoHeader == freezed
          ? _value.seoHeader
          : seoHeader // ignore: cast_nullable_to_non_nullable
              as String,
      seoCaption: seoCaption == freezed
          ? _value.seoCaption
          : seoCaption // ignore: cast_nullable_to_non_nullable
              as String,
      seoText: seoText == freezed
          ? _value.seoText
          : seoText // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: extraInfo == freezed
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      activeFrom: activeFrom == freezed
          ? _value.activeFrom
          : activeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      showOnMain: showOnMain == freezed
          ? _value.showOnMain
          : showOnMain // ignore: cast_nullable_to_non_nullable
              as bool,
      renderedBody: renderedBody == freezed
          ? _value.renderedBody
          : renderedBody // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ResultsNewsCopyWith<$Res>
    implements $ResultsNewsCopyWith<$Res> {
  factory _$$_ResultsNewsCopyWith(
          _$_ResultsNews value, $Res Function(_$_ResultsNews) then) =
      __$$_ResultsNewsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'meta_title') String metaTitle,
      @JsonKey(name: 'meta_keywords') String metaKeywords,
      @JsonKey(name: 'meta_description') String metaDescription,
      @JsonKey(name: 'seo_header') String seoHeader,
      @JsonKey(name: 'seo_caption') String seoCaption,
      @JsonKey(name: 'seo_text') String seoText,
      @JsonKey(name: 'extra_info') String extraInfo,
      @JsonKey(name: 'active_from') String activeFrom,
      String title,
      String slug,
      String summary,
      String image,
      String modified,
      bool published,
      String body,
      @JsonKey(name: 'show_on_main') bool showOnMain,
      @JsonKey(name: 'rendered_body') String renderedBody});
}

/// @nodoc
class __$$_ResultsNewsCopyWithImpl<$Res> extends _$ResultsNewsCopyWithImpl<$Res>
    implements _$$_ResultsNewsCopyWith<$Res> {
  __$$_ResultsNewsCopyWithImpl(
      _$_ResultsNews _value, $Res Function(_$_ResultsNews) _then)
      : super(_value, (v) => _then(v as _$_ResultsNews));

  @override
  _$_ResultsNews get _value => super._value as _$_ResultsNews;

  @override
  $Res call({
    Object? id = freezed,
    Object? metaTitle = freezed,
    Object? metaKeywords = freezed,
    Object? metaDescription = freezed,
    Object? seoHeader = freezed,
    Object? seoCaption = freezed,
    Object? seoText = freezed,
    Object? extraInfo = freezed,
    Object? activeFrom = freezed,
    Object? title = freezed,
    Object? slug = freezed,
    Object? summary = freezed,
    Object? image = freezed,
    Object? modified = freezed,
    Object? published = freezed,
    Object? body = freezed,
    Object? showOnMain = freezed,
    Object? renderedBody = freezed,
  }) {
    return _then(_$_ResultsNews(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      metaTitle: metaTitle == freezed
          ? _value.metaTitle
          : metaTitle // ignore: cast_nullable_to_non_nullable
              as String,
      metaKeywords: metaKeywords == freezed
          ? _value.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String,
      metaDescription: metaDescription == freezed
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      seoHeader: seoHeader == freezed
          ? _value.seoHeader
          : seoHeader // ignore: cast_nullable_to_non_nullable
              as String,
      seoCaption: seoCaption == freezed
          ? _value.seoCaption
          : seoCaption // ignore: cast_nullable_to_non_nullable
              as String,
      seoText: seoText == freezed
          ? _value.seoText
          : seoText // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: extraInfo == freezed
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String,
      activeFrom: activeFrom == freezed
          ? _value.activeFrom
          : activeFrom // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      slug: slug == freezed
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      modified: modified == freezed
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String,
      published: published == freezed
          ? _value.published
          : published // ignore: cast_nullable_to_non_nullable
              as bool,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      showOnMain: showOnMain == freezed
          ? _value.showOnMain
          : showOnMain // ignore: cast_nullable_to_non_nullable
              as bool,
      renderedBody: renderedBody == freezed
          ? _value.renderedBody
          : renderedBody // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultsNews implements _ResultsNews {
  const _$_ResultsNews(
      {required this.id,
      @JsonKey(name: 'meta_title') required this.metaTitle,
      @JsonKey(name: 'meta_keywords') required this.metaKeywords,
      @JsonKey(name: 'meta_description') required this.metaDescription,
      @JsonKey(name: 'seo_header') required this.seoHeader,
      @JsonKey(name: 'seo_caption') required this.seoCaption,
      @JsonKey(name: 'seo_text') required this.seoText,
      @JsonKey(name: 'extra_info') required this.extraInfo,
      @JsonKey(name: 'active_from') required this.activeFrom,
      required this.title,
      required this.slug,
      required this.summary,
      required this.image,
      required this.modified,
      required this.published,
      required this.body,
      @JsonKey(name: 'show_on_main') required this.showOnMain,
      @JsonKey(name: 'rendered_body') required this.renderedBody});

  factory _$_ResultsNews.fromJson(Map<String, dynamic> json) =>
      _$$_ResultsNewsFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'meta_title')
  final String metaTitle;
  @override
  @JsonKey(name: 'meta_keywords')
  final String metaKeywords;
  @override
  @JsonKey(name: 'meta_description')
  final String metaDescription;
  @override
  @JsonKey(name: 'seo_header')
  final String seoHeader;
  @override
  @JsonKey(name: 'seo_caption')
  final String seoCaption;
  @override
  @JsonKey(name: 'seo_text')
  final String seoText;
  @override
  @JsonKey(name: 'extra_info')
  final String extraInfo;
  @override
  @JsonKey(name: 'active_from')
  final String activeFrom;
  @override
  final String title;
  @override
  final String slug;
  @override
  final String summary;
  @override
  final String image;
  @override
  final String modified;
  @override
  final bool published;
  @override
  final String body;
  @override
  @JsonKey(name: 'show_on_main')
  final bool showOnMain;
  @override
  @JsonKey(name: 'rendered_body')
  final String renderedBody;

  @override
  String toString() {
    return 'ResultsNews(id: $id, metaTitle: $metaTitle, metaKeywords: $metaKeywords, metaDescription: $metaDescription, seoHeader: $seoHeader, seoCaption: $seoCaption, seoText: $seoText, extraInfo: $extraInfo, activeFrom: $activeFrom, title: $title, slug: $slug, summary: $summary, image: $image, modified: $modified, published: $published, body: $body, showOnMain: $showOnMain, renderedBody: $renderedBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultsNews &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.metaTitle, metaTitle) &&
            const DeepCollectionEquality()
                .equals(other.metaKeywords, metaKeywords) &&
            const DeepCollectionEquality()
                .equals(other.metaDescription, metaDescription) &&
            const DeepCollectionEquality().equals(other.seoHeader, seoHeader) &&
            const DeepCollectionEquality()
                .equals(other.seoCaption, seoCaption) &&
            const DeepCollectionEquality().equals(other.seoText, seoText) &&
            const DeepCollectionEquality().equals(other.extraInfo, extraInfo) &&
            const DeepCollectionEquality()
                .equals(other.activeFrom, activeFrom) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.slug, slug) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.modified, modified) &&
            const DeepCollectionEquality().equals(other.published, published) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.showOnMain, showOnMain) &&
            const DeepCollectionEquality()
                .equals(other.renderedBody, renderedBody));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(metaTitle),
      const DeepCollectionEquality().hash(metaKeywords),
      const DeepCollectionEquality().hash(metaDescription),
      const DeepCollectionEquality().hash(seoHeader),
      const DeepCollectionEquality().hash(seoCaption),
      const DeepCollectionEquality().hash(seoText),
      const DeepCollectionEquality().hash(extraInfo),
      const DeepCollectionEquality().hash(activeFrom),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(slug),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(modified),
      const DeepCollectionEquality().hash(published),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(showOnMain),
      const DeepCollectionEquality().hash(renderedBody));

  @JsonKey(ignore: true)
  @override
  _$$_ResultsNewsCopyWith<_$_ResultsNews> get copyWith =>
      __$$_ResultsNewsCopyWithImpl<_$_ResultsNews>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultsNewsToJson(
      this,
    );
  }
}

abstract class _ResultsNews implements ResultsNews {
  const factory _ResultsNews(
      {required final int id,
      @JsonKey(name: 'meta_title')
          required final String metaTitle,
      @JsonKey(name: 'meta_keywords')
          required final String metaKeywords,
      @JsonKey(name: 'meta_description')
          required final String metaDescription,
      @JsonKey(name: 'seo_header')
          required final String seoHeader,
      @JsonKey(name: 'seo_caption')
          required final String seoCaption,
      @JsonKey(name: 'seo_text')
          required final String seoText,
      @JsonKey(name: 'extra_info')
          required final String extraInfo,
      @JsonKey(name: 'active_from')
          required final String activeFrom,
      required final String title,
      required final String slug,
      required final String summary,
      required final String image,
      required final String modified,
      required final bool published,
      required final String body,
      @JsonKey(name: 'show_on_main')
          required final bool showOnMain,
      @JsonKey(name: 'rendered_body')
          required final String renderedBody}) = _$_ResultsNews;

  factory _ResultsNews.fromJson(Map<String, dynamic> json) =
      _$_ResultsNews.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'meta_title')
  String get metaTitle;
  @override
  @JsonKey(name: 'meta_keywords')
  String get metaKeywords;
  @override
  @JsonKey(name: 'meta_description')
  String get metaDescription;
  @override
  @JsonKey(name: 'seo_header')
  String get seoHeader;
  @override
  @JsonKey(name: 'seo_caption')
  String get seoCaption;
  @override
  @JsonKey(name: 'seo_text')
  String get seoText;
  @override
  @JsonKey(name: 'extra_info')
  String get extraInfo;
  @override
  @JsonKey(name: 'active_from')
  String get activeFrom;
  @override
  String get title;
  @override
  String get slug;
  @override
  String get summary;
  @override
  String get image;
  @override
  String get modified;
  @override
  bool get published;
  @override
  String get body;
  @override
  @JsonKey(name: 'show_on_main')
  bool get showOnMain;
  @override
  @JsonKey(name: 'rendered_body')
  String get renderedBody;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsNewsCopyWith<_$_ResultsNews> get copyWith =>
      throw _privateConstructorUsedError;
}
