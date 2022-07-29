// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ChildCategories {
  final int id;
  final String slug;
  final String name;
  final bool word_split;
  final String active_icon;
  final String nonactive_icon;
  final String active_image;
  final String nonactive_image;
  final bool child;
  final bool is_horizontal;
  final String mobile_text_color;
  final String mobile_background_color;
  final String mobile_active_text_color;
  final String mobile_inactive_text_color;
  ChildCategories({
    required this.id,
    required this.slug,
    required this.name,
    required this.word_split,
    required this.active_icon,
    required this.nonactive_icon,
    required this.active_image,
    required this.nonactive_image,
    required this.child,
    required this.is_horizontal,
    required this.mobile_text_color,
    required this.mobile_background_color,
    required this.mobile_active_text_color,
    required this.mobile_inactive_text_color,
  });

  ChildCategories copyWith({
    int? id,
    String? slug,
    String? name,
    bool? word_split,
    String? active_icon,
    String? nonactive_icon,
    String? active_image,
    String? nonactive_image,
    bool? child,
    bool? is_horizontal,
    String? mobile_text_color,
    String? mobile_background_color,
    String? mobile_active_text_color,
    String? mobile_inactive_text_color,
  }) {
    return ChildCategories(
      id: id ?? this.id,
      slug: slug ?? this.slug,
      name: name ?? this.name,
      word_split: word_split ?? this.word_split,
      active_icon: active_icon ?? this.active_icon,
      nonactive_icon: nonactive_icon ?? this.nonactive_icon,
      active_image: active_image ?? this.active_image,
      nonactive_image: nonactive_image ?? this.nonactive_image,
      child: child ?? this.child,
      is_horizontal: is_horizontal ?? this.is_horizontal,
      mobile_text_color: mobile_text_color ?? this.mobile_text_color,
      mobile_background_color:
          mobile_background_color ?? this.mobile_background_color,
      mobile_active_text_color:
          mobile_active_text_color ?? this.mobile_active_text_color,
      mobile_inactive_text_color:
          mobile_inactive_text_color ?? this.mobile_inactive_text_color,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'slug': slug,
      'name': name,
      'word_split': word_split,
      'active_icon': active_icon,
      'nonactive_icon': nonactive_icon,
      'active_image': active_image,
      'nonactive_image': nonactive_image,
      'child': child,
      'is_horizontal': is_horizontal,
      'mobile_text_color': mobile_text_color,
      'mobile_background_color': mobile_background_color,
      'mobile_active_text_color': mobile_active_text_color,
      'mobile_inactive_text_color': mobile_inactive_text_color,
    };
  }

  factory ChildCategories.fromMap(Map<String, dynamic> map) {
    return ChildCategories(
      id: map['id'] as int,
      slug: map['slug'] as String,
      name: map['name'] as String,
      word_split: map['word_split'] as bool,
      active_icon: map['active_icon'] as String,
      nonactive_icon: map['nonactive_icon'] as String,
      active_image: map['active_image'] as String,
      nonactive_image: map['nonactive_image'] as String,
      child: map['child'] as bool,
      is_horizontal: map['is_horizontal'] as bool,
      mobile_text_color: map['mobile_text_color'] as String,
      mobile_background_color: map['mobile_background_color'] as String,
      mobile_active_text_color: map['mobile_active_text_color'] as String,
      mobile_inactive_text_color: map['mobile_inactive_text_color'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChildCategories.fromJson(String source) =>
      ChildCategories.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ChildCategories(id: $id, slug: $slug, name: $name, word_split: $word_split, active_icon: $active_icon, nonactive_icon: $nonactive_icon, active_image: $active_image, nonactive_image: $nonactive_image, child: $child, is_horizontal: $is_horizontal, mobile_text_color: $mobile_text_color, mobile_background_color: $mobile_background_color, mobile_active_text_color: $mobile_active_text_color, mobile_inactive_text_color: $mobile_inactive_text_color)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ChildCategories &&
        other.id == id &&
        other.slug == slug &&
        other.name == name &&
        other.word_split == word_split &&
        other.active_icon == active_icon &&
        other.nonactive_icon == nonactive_icon &&
        other.active_image == active_image &&
        other.nonactive_image == nonactive_image &&
        other.child == child &&
        other.is_horizontal == is_horizontal &&
        other.mobile_text_color == mobile_text_color &&
        other.mobile_background_color == mobile_background_color &&
        other.mobile_active_text_color == mobile_active_text_color &&
        other.mobile_inactive_text_color == mobile_inactive_text_color;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        slug.hashCode ^
        name.hashCode ^
        word_split.hashCode ^
        active_icon.hashCode ^
        nonactive_icon.hashCode ^
        active_image.hashCode ^
        nonactive_image.hashCode ^
        child.hashCode ^
        is_horizontal.hashCode ^
        mobile_text_color.hashCode ^
        mobile_background_color.hashCode ^
        mobile_active_text_color.hashCode ^
        mobile_inactive_text_color.hashCode;
  }
}
