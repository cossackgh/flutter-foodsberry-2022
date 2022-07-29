// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_address')
  String? get deliveryAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_sum')
  double? get orderSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_order_sum')
  double? get minOrderSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'pay_methods')
  List<PayMethods>? get payMethods => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_choices')
  List<DeliveryChoices>? get deliveryChoices =>
      throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_display')
  String? get statusDisplay => throw _privateConstructorUsedError;
  List<Products>? get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_date_choices')
  List<DeliveryDateChoices>? get deliveryDateChoices =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'discount_promocode_sum')
  double? get discountPromocodeSum => throw _privateConstructorUsedError;
  @JsonKey(name: 'promocode_id')
  String? get promocodeId => throw _privateConstructorUsedError;
  ErrorDio? get errorDio => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      @JsonKey(name: 'delivery_address')
          String? deliveryAddress,
      @JsonKey(name: 'order_sum')
          double? orderSum,
      @JsonKey(name: 'min_order_sum')
          double? minOrderSum,
      @JsonKey(name: 'pay_methods')
          List<PayMethods>? payMethods,
      @JsonKey(name: 'delivery_choices')
          List<DeliveryChoices>? deliveryChoices,
      User? user,
      @JsonKey(name: 'status_display')
          String? statusDisplay,
      List<Products>? products,
      @JsonKey(name: 'delivery_date_choices')
          List<DeliveryDateChoices>? deliveryDateChoices,
      @JsonKey(name: 'discount_promocode_sum')
          double? discountPromocodeSum,
      @JsonKey(name: 'promocode_id')
          String? promocodeId,
      ErrorDio? errorDio});

  $UserCopyWith<$Res>? get user;
  $ErrorDioCopyWith<$Res>? get errorDio;
}

/// @nodoc
class _$CartCopyWithImpl<$Res> implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  final Cart _value;
  // ignore: unused_field
  final $Res Function(Cart) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? deliveryAddress = freezed,
    Object? orderSum = freezed,
    Object? minOrderSum = freezed,
    Object? payMethods = freezed,
    Object? deliveryChoices = freezed,
    Object? user = freezed,
    Object? statusDisplay = freezed,
    Object? products = freezed,
    Object? deliveryDateChoices = freezed,
    Object? discountPromocodeSum = freezed,
    Object? promocodeId = freezed,
    Object? errorDio = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      orderSum: orderSum == freezed
          ? _value.orderSum
          : orderSum // ignore: cast_nullable_to_non_nullable
              as double?,
      minOrderSum: minOrderSum == freezed
          ? _value.minOrderSum
          : minOrderSum // ignore: cast_nullable_to_non_nullable
              as double?,
      payMethods: payMethods == freezed
          ? _value.payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as List<PayMethods>?,
      deliveryChoices: deliveryChoices == freezed
          ? _value.deliveryChoices
          : deliveryChoices // ignore: cast_nullable_to_non_nullable
              as List<DeliveryChoices>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      statusDisplay: statusDisplay == freezed
          ? _value.statusDisplay
          : statusDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
      deliveryDateChoices: deliveryDateChoices == freezed
          ? _value.deliveryDateChoices
          : deliveryDateChoices // ignore: cast_nullable_to_non_nullable
              as List<DeliveryDateChoices>?,
      discountPromocodeSum: discountPromocodeSum == freezed
          ? _value.discountPromocodeSum
          : discountPromocodeSum // ignore: cast_nullable_to_non_nullable
              as double?,
      promocodeId: promocodeId == freezed
          ? _value.promocodeId
          : promocodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDio: errorDio == freezed
          ? _value.errorDio
          : errorDio // ignore: cast_nullable_to_non_nullable
              as ErrorDio?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $ErrorDioCopyWith<$Res>? get errorDio {
    if (_value.errorDio == null) {
      return null;
    }

    return $ErrorDioCopyWith<$Res>(_value.errorDio!, (value) {
      return _then(_value.copyWith(errorDio: value));
    });
  }
}

/// @nodoc
abstract class _$$_CartCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$_CartCopyWith(_$_Cart value, $Res Function(_$_Cart) then) =
      __$$_CartCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      @JsonKey(name: 'delivery_address')
          String? deliveryAddress,
      @JsonKey(name: 'order_sum')
          double? orderSum,
      @JsonKey(name: 'min_order_sum')
          double? minOrderSum,
      @JsonKey(name: 'pay_methods')
          List<PayMethods>? payMethods,
      @JsonKey(name: 'delivery_choices')
          List<DeliveryChoices>? deliveryChoices,
      User? user,
      @JsonKey(name: 'status_display')
          String? statusDisplay,
      List<Products>? products,
      @JsonKey(name: 'delivery_date_choices')
          List<DeliveryDateChoices>? deliveryDateChoices,
      @JsonKey(name: 'discount_promocode_sum')
          double? discountPromocodeSum,
      @JsonKey(name: 'promocode_id')
          String? promocodeId,
      ErrorDio? errorDio});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ErrorDioCopyWith<$Res>? get errorDio;
}

/// @nodoc
class __$$_CartCopyWithImpl<$Res> extends _$CartCopyWithImpl<$Res>
    implements _$$_CartCopyWith<$Res> {
  __$$_CartCopyWithImpl(_$_Cart _value, $Res Function(_$_Cart) _then)
      : super(_value, (v) => _then(v as _$_Cart));

  @override
  _$_Cart get _value => super._value as _$_Cart;

  @override
  $Res call({
    Object? id = freezed,
    Object? deliveryAddress = freezed,
    Object? orderSum = freezed,
    Object? minOrderSum = freezed,
    Object? payMethods = freezed,
    Object? deliveryChoices = freezed,
    Object? user = freezed,
    Object? statusDisplay = freezed,
    Object? products = freezed,
    Object? deliveryDateChoices = freezed,
    Object? discountPromocodeSum = freezed,
    Object? promocodeId = freezed,
    Object? errorDio = freezed,
  }) {
    return _then(_$_Cart(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      deliveryAddress: deliveryAddress == freezed
          ? _value.deliveryAddress
          : deliveryAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      orderSum: orderSum == freezed
          ? _value.orderSum
          : orderSum // ignore: cast_nullable_to_non_nullable
              as double?,
      minOrderSum: minOrderSum == freezed
          ? _value.minOrderSum
          : minOrderSum // ignore: cast_nullable_to_non_nullable
              as double?,
      payMethods: payMethods == freezed
          ? _value._payMethods
          : payMethods // ignore: cast_nullable_to_non_nullable
              as List<PayMethods>?,
      deliveryChoices: deliveryChoices == freezed
          ? _value._deliveryChoices
          : deliveryChoices // ignore: cast_nullable_to_non_nullable
              as List<DeliveryChoices>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      statusDisplay: statusDisplay == freezed
          ? _value.statusDisplay
          : statusDisplay // ignore: cast_nullable_to_non_nullable
              as String?,
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Products>?,
      deliveryDateChoices: deliveryDateChoices == freezed
          ? _value._deliveryDateChoices
          : deliveryDateChoices // ignore: cast_nullable_to_non_nullable
              as List<DeliveryDateChoices>?,
      discountPromocodeSum: discountPromocodeSum == freezed
          ? _value.discountPromocodeSum
          : discountPromocodeSum // ignore: cast_nullable_to_non_nullable
              as double?,
      promocodeId: promocodeId == freezed
          ? _value.promocodeId
          : promocodeId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorDio: errorDio == freezed
          ? _value.errorDio
          : errorDio // ignore: cast_nullable_to_non_nullable
              as ErrorDio?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cart implements _Cart {
  const _$_Cart(
      {this.id = 0,
      @JsonKey(name: 'delivery_address')
          this.deliveryAddress = '',
      @JsonKey(name: 'order_sum')
          this.orderSum = 0,
      @JsonKey(name: 'min_order_sum')
          this.minOrderSum = 0,
      @JsonKey(name: 'pay_methods')
          final List<PayMethods>? payMethods = const [],
      @JsonKey(name: 'delivery_choices')
          final List<DeliveryChoices>? deliveryChoices = const [],
      this.user = null,
      @JsonKey(name: 'status_display')
          this.statusDisplay = '',
      final List<Products>? products = const [],
      @JsonKey(name: 'delivery_date_choices')
          final List<DeliveryDateChoices>? deliveryDateChoices = const [],
      @JsonKey(name: 'discount_promocode_sum')
          this.discountPromocodeSum = 0.0,
      @JsonKey(name: 'promocode_id')
          this.promocodeId = '',
      this.errorDio = const ErrorDio(isError: false, errorMessage: '')})
      : _payMethods = payMethods,
        _deliveryChoices = deliveryChoices,
        _products = products,
        _deliveryDateChoices = deliveryDateChoices;

  factory _$_Cart.fromJson(Map<String, dynamic> json) => _$$_CartFromJson(json);

  @override
  @JsonKey()
  final int? id;
  @override
  @JsonKey(name: 'delivery_address')
  final String? deliveryAddress;
  @override
  @JsonKey(name: 'order_sum')
  final double? orderSum;
  @override
  @JsonKey(name: 'min_order_sum')
  final double? minOrderSum;
  final List<PayMethods>? _payMethods;
  @override
  @JsonKey(name: 'pay_methods')
  List<PayMethods>? get payMethods {
    final value = _payMethods;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DeliveryChoices>? _deliveryChoices;
  @override
  @JsonKey(name: 'delivery_choices')
  List<DeliveryChoices>? get deliveryChoices {
    final value = _deliveryChoices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final User? user;
  @override
  @JsonKey(name: 'status_display')
  final String? statusDisplay;
  final List<Products>? _products;
  @override
  @JsonKey()
  List<Products>? get products {
    final value = _products;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DeliveryDateChoices>? _deliveryDateChoices;
  @override
  @JsonKey(name: 'delivery_date_choices')
  List<DeliveryDateChoices>? get deliveryDateChoices {
    final value = _deliveryDateChoices;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'discount_promocode_sum')
  final double? discountPromocodeSum;
  @override
  @JsonKey(name: 'promocode_id')
  final String? promocodeId;
  @override
  @JsonKey()
  final ErrorDio? errorDio;

  @override
  String toString() {
    return 'Cart(id: $id, deliveryAddress: $deliveryAddress, orderSum: $orderSum, minOrderSum: $minOrderSum, payMethods: $payMethods, deliveryChoices: $deliveryChoices, user: $user, statusDisplay: $statusDisplay, products: $products, deliveryDateChoices: $deliveryDateChoices, discountPromocodeSum: $discountPromocodeSum, promocodeId: $promocodeId, errorDio: $errorDio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cart &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.deliveryAddress, deliveryAddress) &&
            const DeepCollectionEquality().equals(other.orderSum, orderSum) &&
            const DeepCollectionEquality()
                .equals(other.minOrderSum, minOrderSum) &&
            const DeepCollectionEquality()
                .equals(other._payMethods, _payMethods) &&
            const DeepCollectionEquality()
                .equals(other._deliveryChoices, _deliveryChoices) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.statusDisplay, statusDisplay) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._deliveryDateChoices, _deliveryDateChoices) &&
            const DeepCollectionEquality()
                .equals(other.discountPromocodeSum, discountPromocodeSum) &&
            const DeepCollectionEquality()
                .equals(other.promocodeId, promocodeId) &&
            const DeepCollectionEquality().equals(other.errorDio, errorDio));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(deliveryAddress),
      const DeepCollectionEquality().hash(orderSum),
      const DeepCollectionEquality().hash(minOrderSum),
      const DeepCollectionEquality().hash(_payMethods),
      const DeepCollectionEquality().hash(_deliveryChoices),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(statusDisplay),
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_deliveryDateChoices),
      const DeepCollectionEquality().hash(discountPromocodeSum),
      const DeepCollectionEquality().hash(promocodeId),
      const DeepCollectionEquality().hash(errorDio));

  @JsonKey(ignore: true)
  @override
  _$$_CartCopyWith<_$_Cart> get copyWith =>
      __$$_CartCopyWithImpl<_$_Cart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CartToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {final int? id,
      @JsonKey(name: 'delivery_address')
          final String? deliveryAddress,
      @JsonKey(name: 'order_sum')
          final double? orderSum,
      @JsonKey(name: 'min_order_sum')
          final double? minOrderSum,
      @JsonKey(name: 'pay_methods')
          final List<PayMethods>? payMethods,
      @JsonKey(name: 'delivery_choices')
          final List<DeliveryChoices>? deliveryChoices,
      final User? user,
      @JsonKey(name: 'status_display')
          final String? statusDisplay,
      final List<Products>? products,
      @JsonKey(name: 'delivery_date_choices')
          final List<DeliveryDateChoices>? deliveryDateChoices,
      @JsonKey(name: 'discount_promocode_sum')
          final double? discountPromocodeSum,
      @JsonKey(name: 'promocode_id')
          final String? promocodeId,
      final ErrorDio? errorDio}) = _$_Cart;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$_Cart.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'delivery_address')
  String? get deliveryAddress;
  @override
  @JsonKey(name: 'order_sum')
  double? get orderSum;
  @override
  @JsonKey(name: 'min_order_sum')
  double? get minOrderSum;
  @override
  @JsonKey(name: 'pay_methods')
  List<PayMethods>? get payMethods;
  @override
  @JsonKey(name: 'delivery_choices')
  List<DeliveryChoices>? get deliveryChoices;
  @override
  User? get user;
  @override
  @JsonKey(name: 'status_display')
  String? get statusDisplay;
  @override
  List<Products>? get products;
  @override
  @JsonKey(name: 'delivery_date_choices')
  List<DeliveryDateChoices>? get deliveryDateChoices;
  @override
  @JsonKey(name: 'discount_promocode_sum')
  double? get discountPromocodeSum;
  @override
  @JsonKey(name: 'promocode_id')
  String? get promocodeId;
  @override
  ErrorDio? get errorDio;
  @override
  @JsonKey(ignore: true)
  _$$_CartCopyWith<_$_Cart> get copyWith => throw _privateConstructorUsedError;
}

PayMethods _$PayMethodsFromJson(Map<String, dynamic> json) {
  return _PayMethods.fromJson(json);
}

/// @nodoc
mixin _$PayMethods {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayMethodsCopyWith<PayMethods> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayMethodsCopyWith<$Res> {
  factory $PayMethodsCopyWith(
          PayMethods value, $Res Function(PayMethods) then) =
      _$PayMethodsCopyWithImpl<$Res>;
  $Res call({int? id, String? title});
}

/// @nodoc
class _$PayMethodsCopyWithImpl<$Res> implements $PayMethodsCopyWith<$Res> {
  _$PayMethodsCopyWithImpl(this._value, this._then);

  final PayMethods _value;
  // ignore: unused_field
  final $Res Function(PayMethods) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PayMethodsCopyWith<$Res>
    implements $PayMethodsCopyWith<$Res> {
  factory _$$_PayMethodsCopyWith(
          _$_PayMethods value, $Res Function(_$_PayMethods) then) =
      __$$_PayMethodsCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? title});
}

/// @nodoc
class __$$_PayMethodsCopyWithImpl<$Res> extends _$PayMethodsCopyWithImpl<$Res>
    implements _$$_PayMethodsCopyWith<$Res> {
  __$$_PayMethodsCopyWithImpl(
      _$_PayMethods _value, $Res Function(_$_PayMethods) _then)
      : super(_value, (v) => _then(v as _$_PayMethods));

  @override
  _$_PayMethods get _value => super._value as _$_PayMethods;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
  }) {
    return _then(_$_PayMethods(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PayMethods implements _PayMethods {
  const _$_PayMethods({required this.id, this.title = ''});

  factory _$_PayMethods.fromJson(Map<String, dynamic> json) =>
      _$$_PayMethodsFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey()
  final String? title;

  @override
  String toString() {
    return 'PayMethods(id: $id, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PayMethods &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$_PayMethodsCopyWith<_$_PayMethods> get copyWith =>
      __$$_PayMethodsCopyWithImpl<_$_PayMethods>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PayMethodsToJson(
      this,
    );
  }
}

abstract class _PayMethods implements PayMethods {
  const factory _PayMethods({required final int? id, final String? title}) =
      _$_PayMethods;

  factory _PayMethods.fromJson(Map<String, dynamic> json) =
      _$_PayMethods.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  @JsonKey(ignore: true)
  _$$_PayMethodsCopyWith<_$_PayMethods> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorDio _$ErrorDioFromJson(Map<String, dynamic> json) {
  return _ErrorDio.fromJson(json);
}

/// @nodoc
mixin _$ErrorDio {
  bool? get isError => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorDioCopyWith<ErrorDio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorDioCopyWith<$Res> {
  factory $ErrorDioCopyWith(ErrorDio value, $Res Function(ErrorDio) then) =
      _$ErrorDioCopyWithImpl<$Res>;
  $Res call({bool? isError, String? errorMessage});
}

/// @nodoc
class _$ErrorDioCopyWithImpl<$Res> implements $ErrorDioCopyWith<$Res> {
  _$ErrorDioCopyWithImpl(this._value, this._then);

  final ErrorDio _value;
  // ignore: unused_field
  final $Res Function(ErrorDio) _then;

  @override
  $Res call({
    Object? isError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ErrorDioCopyWith<$Res> implements $ErrorDioCopyWith<$Res> {
  factory _$$_ErrorDioCopyWith(
          _$_ErrorDio value, $Res Function(_$_ErrorDio) then) =
      __$$_ErrorDioCopyWithImpl<$Res>;
  @override
  $Res call({bool? isError, String? errorMessage});
}

/// @nodoc
class __$$_ErrorDioCopyWithImpl<$Res> extends _$ErrorDioCopyWithImpl<$Res>
    implements _$$_ErrorDioCopyWith<$Res> {
  __$$_ErrorDioCopyWithImpl(
      _$_ErrorDio _value, $Res Function(_$_ErrorDio) _then)
      : super(_value, (v) => _then(v as _$_ErrorDio));

  @override
  _$_ErrorDio get _value => super._value as _$_ErrorDio;

  @override
  $Res call({
    Object? isError = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_ErrorDio(
      isError: isError == freezed
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorDio implements _ErrorDio {
  const _$_ErrorDio({required this.isError, required this.errorMessage});

  factory _$_ErrorDio.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorDioFromJson(json);

  @override
  final bool? isError;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ErrorDio(isError: $isError, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorDio &&
            const DeepCollectionEquality().equals(other.isError, isError) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isError),
      const DeepCollectionEquality().hash(errorMessage));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorDioCopyWith<_$_ErrorDio> get copyWith =>
      __$$_ErrorDioCopyWithImpl<_$_ErrorDio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorDioToJson(
      this,
    );
  }
}

abstract class _ErrorDio implements ErrorDio {
  const factory _ErrorDio(
      {required final bool? isError,
      required final String? errorMessage}) = _$_ErrorDio;

  factory _ErrorDio.fromJson(Map<String, dynamic> json) = _$_ErrorDio.fromJson;

  @override
  bool? get isError;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorDioCopyWith<_$_ErrorDio> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryChoices _$DeliveryChoicesFromJson(Map<String, dynamic> json) {
  return _DeliveryChoices.fromJson(json);
}

/// @nodoc
mixin _$DeliveryChoices {
  int? get choice => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryChoicesCopyWith<DeliveryChoices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryChoicesCopyWith<$Res> {
  factory $DeliveryChoicesCopyWith(
          DeliveryChoices value, $Res Function(DeliveryChoices) then) =
      _$DeliveryChoicesCopyWithImpl<$Res>;
  $Res call({int? choice, String? name});
}

/// @nodoc
class _$DeliveryChoicesCopyWithImpl<$Res>
    implements $DeliveryChoicesCopyWith<$Res> {
  _$DeliveryChoicesCopyWithImpl(this._value, this._then);

  final DeliveryChoices _value;
  // ignore: unused_field
  final $Res Function(DeliveryChoices) _then;

  @override
  $Res call({
    Object? choice = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveryChoicesCopyWith<$Res>
    implements $DeliveryChoicesCopyWith<$Res> {
  factory _$$_DeliveryChoicesCopyWith(
          _$_DeliveryChoices value, $Res Function(_$_DeliveryChoices) then) =
      __$$_DeliveryChoicesCopyWithImpl<$Res>;
  @override
  $Res call({int? choice, String? name});
}

/// @nodoc
class __$$_DeliveryChoicesCopyWithImpl<$Res>
    extends _$DeliveryChoicesCopyWithImpl<$Res>
    implements _$$_DeliveryChoicesCopyWith<$Res> {
  __$$_DeliveryChoicesCopyWithImpl(
      _$_DeliveryChoices _value, $Res Function(_$_DeliveryChoices) _then)
      : super(_value, (v) => _then(v as _$_DeliveryChoices));

  @override
  _$_DeliveryChoices get _value => super._value as _$_DeliveryChoices;

  @override
  $Res call({
    Object? choice = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DeliveryChoices(
      choice: choice == freezed
          ? _value.choice
          : choice // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryChoices implements _DeliveryChoices {
  const _$_DeliveryChoices({required this.choice, this.name = ''});

  factory _$_DeliveryChoices.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryChoicesFromJson(json);

  @override
  final int? choice;
  @override
  @JsonKey()
  final String? name;

  @override
  String toString() {
    return 'DeliveryChoices(choice: $choice, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryChoices &&
            const DeepCollectionEquality().equals(other.choice, choice) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(choice),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryChoicesCopyWith<_$_DeliveryChoices> get copyWith =>
      __$$_DeliveryChoicesCopyWithImpl<_$_DeliveryChoices>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryChoicesToJson(
      this,
    );
  }
}

abstract class _DeliveryChoices implements DeliveryChoices {
  const factory _DeliveryChoices(
      {required final int? choice, final String? name}) = _$_DeliveryChoices;

  factory _DeliveryChoices.fromJson(Map<String, dynamic> json) =
      _$_DeliveryChoices.fromJson;

  @override
  int? get choice;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryChoicesCopyWith<_$_DeliveryChoices> get copyWith =>
      throw _privateConstructorUsedError;
}

DeliveryDateChoices _$DeliveryDateChoicesFromJson(Map<String, dynamic> json) {
  return _DeliveryDateChoices.fromJson(json);
}

/// @nodoc
mixin _$DeliveryDateChoices {
  String? get key => throw _privateConstructorUsedError;
  String? get display => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeliveryDateChoicesCopyWith<DeliveryDateChoices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryDateChoicesCopyWith<$Res> {
  factory $DeliveryDateChoicesCopyWith(
          DeliveryDateChoices value, $Res Function(DeliveryDateChoices) then) =
      _$DeliveryDateChoicesCopyWithImpl<$Res>;
  $Res call({String? key, String? display});
}

/// @nodoc
class _$DeliveryDateChoicesCopyWithImpl<$Res>
    implements $DeliveryDateChoicesCopyWith<$Res> {
  _$DeliveryDateChoicesCopyWithImpl(this._value, this._then);

  final DeliveryDateChoices _value;
  // ignore: unused_field
  final $Res Function(DeliveryDateChoices) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? display = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DeliveryDateChoicesCopyWith<$Res>
    implements $DeliveryDateChoicesCopyWith<$Res> {
  factory _$$_DeliveryDateChoicesCopyWith(_$_DeliveryDateChoices value,
          $Res Function(_$_DeliveryDateChoices) then) =
      __$$_DeliveryDateChoicesCopyWithImpl<$Res>;
  @override
  $Res call({String? key, String? display});
}

/// @nodoc
class __$$_DeliveryDateChoicesCopyWithImpl<$Res>
    extends _$DeliveryDateChoicesCopyWithImpl<$Res>
    implements _$$_DeliveryDateChoicesCopyWith<$Res> {
  __$$_DeliveryDateChoicesCopyWithImpl(_$_DeliveryDateChoices _value,
      $Res Function(_$_DeliveryDateChoices) _then)
      : super(_value, (v) => _then(v as _$_DeliveryDateChoices));

  @override
  _$_DeliveryDateChoices get _value => super._value as _$_DeliveryDateChoices;

  @override
  $Res call({
    Object? key = freezed,
    Object? display = freezed,
  }) {
    return _then(_$_DeliveryDateChoices(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      display: display == freezed
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DeliveryDateChoices implements _DeliveryDateChoices {
  const _$_DeliveryDateChoices({this.key = '', this.display = ''});

  factory _$_DeliveryDateChoices.fromJson(Map<String, dynamic> json) =>
      _$$_DeliveryDateChoicesFromJson(json);

  @override
  @JsonKey()
  final String? key;
  @override
  @JsonKey()
  final String? display;

  @override
  String toString() {
    return 'DeliveryDateChoices(key: $key, display: $display)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryDateChoices &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.display, display));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(display));

  @JsonKey(ignore: true)
  @override
  _$$_DeliveryDateChoicesCopyWith<_$_DeliveryDateChoices> get copyWith =>
      __$$_DeliveryDateChoicesCopyWithImpl<_$_DeliveryDateChoices>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeliveryDateChoicesToJson(
      this,
    );
  }
}

abstract class _DeliveryDateChoices implements DeliveryDateChoices {
  const factory _DeliveryDateChoices(
      {final String? key, final String? display}) = _$_DeliveryDateChoices;

  factory _DeliveryDateChoices.fromJson(Map<String, dynamic> json) =
      _$_DeliveryDateChoices.fromJson;

  @override
  String? get key;
  @override
  String? get display;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryDateChoicesCopyWith<_$_DeliveryDateChoices> get copyWith =>
      throw _privateConstructorUsedError;
}

AddToCartRecive _$AddToCartReciveFromJson(Map<String, dynamic> json) {
  return _AddToCartRecive.fromJson(json);
}

/// @nodoc
mixin _$AddToCartRecive {
  @JsonKey(name: 'cart_item_id')
  int? get cartItemId => throw _privateConstructorUsedError;
  @JsonKey(name: 'items_count')
  int? get itemsCount => throw _privateConstructorUsedError;
  int? get sum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddToCartReciveCopyWith<AddToCartRecive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToCartReciveCopyWith<$Res> {
  factory $AddToCartReciveCopyWith(
          AddToCartRecive value, $Res Function(AddToCartRecive) then) =
      _$AddToCartReciveCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cart_item_id') int? cartItemId,
      @JsonKey(name: 'items_count') int? itemsCount,
      int? sum});
}

/// @nodoc
class _$AddToCartReciveCopyWithImpl<$Res>
    implements $AddToCartReciveCopyWith<$Res> {
  _$AddToCartReciveCopyWithImpl(this._value, this._then);

  final AddToCartRecive _value;
  // ignore: unused_field
  final $Res Function(AddToCartRecive) _then;

  @override
  $Res call({
    Object? cartItemId = freezed,
    Object? itemsCount = freezed,
    Object? sum = freezed,
  }) {
    return _then(_value.copyWith(
      cartItemId: cartItemId == freezed
          ? _value.cartItemId
          : cartItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsCount: itemsCount == freezed
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_AddToCartReciveCopyWith<$Res>
    implements $AddToCartReciveCopyWith<$Res> {
  factory _$$_AddToCartReciveCopyWith(
          _$_AddToCartRecive value, $Res Function(_$_AddToCartRecive) then) =
      __$$_AddToCartReciveCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cart_item_id') int? cartItemId,
      @JsonKey(name: 'items_count') int? itemsCount,
      int? sum});
}

/// @nodoc
class __$$_AddToCartReciveCopyWithImpl<$Res>
    extends _$AddToCartReciveCopyWithImpl<$Res>
    implements _$$_AddToCartReciveCopyWith<$Res> {
  __$$_AddToCartReciveCopyWithImpl(
      _$_AddToCartRecive _value, $Res Function(_$_AddToCartRecive) _then)
      : super(_value, (v) => _then(v as _$_AddToCartRecive));

  @override
  _$_AddToCartRecive get _value => super._value as _$_AddToCartRecive;

  @override
  $Res call({
    Object? cartItemId = freezed,
    Object? itemsCount = freezed,
    Object? sum = freezed,
  }) {
    return _then(_$_AddToCartRecive(
      cartItemId: cartItemId == freezed
          ? _value.cartItemId
          : cartItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      itemsCount: itemsCount == freezed
          ? _value.itemsCount
          : itemsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      sum: sum == freezed
          ? _value.sum
          : sum // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddToCartRecive implements _AddToCartRecive {
  const _$_AddToCartRecive(
      {@JsonKey(name: 'cart_item_id') this.cartItemId = 0,
      @JsonKey(name: 'items_count') this.itemsCount = 0,
      this.sum = 0});

  factory _$_AddToCartRecive.fromJson(Map<String, dynamic> json) =>
      _$$_AddToCartReciveFromJson(json);

  @override
  @JsonKey(name: 'cart_item_id')
  final int? cartItemId;
  @override
  @JsonKey(name: 'items_count')
  final int? itemsCount;
  @override
  @JsonKey()
  final int? sum;

  @override
  String toString() {
    return 'AddToCartRecive(cartItemId: $cartItemId, itemsCount: $itemsCount, sum: $sum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddToCartRecive &&
            const DeepCollectionEquality()
                .equals(other.cartItemId, cartItemId) &&
            const DeepCollectionEquality()
                .equals(other.itemsCount, itemsCount) &&
            const DeepCollectionEquality().equals(other.sum, sum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cartItemId),
      const DeepCollectionEquality().hash(itemsCount),
      const DeepCollectionEquality().hash(sum));

  @JsonKey(ignore: true)
  @override
  _$$_AddToCartReciveCopyWith<_$_AddToCartRecive> get copyWith =>
      __$$_AddToCartReciveCopyWithImpl<_$_AddToCartRecive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AddToCartReciveToJson(
      this,
    );
  }
}

abstract class _AddToCartRecive implements AddToCartRecive {
  const factory _AddToCartRecive(
      {@JsonKey(name: 'cart_item_id') final int? cartItemId,
      @JsonKey(name: 'items_count') final int? itemsCount,
      final int? sum}) = _$_AddToCartRecive;

  factory _AddToCartRecive.fromJson(Map<String, dynamic> json) =
      _$_AddToCartRecive.fromJson;

  @override
  @JsonKey(name: 'cart_item_id')
  int? get cartItemId;
  @override
  @JsonKey(name: 'items_count')
  int? get itemsCount;
  @override
  int? get sum;
  @override
  @JsonKey(ignore: true)
  _$$_AddToCartReciveCopyWith<_$_AddToCartRecive> get copyWith =>
      throw _privateConstructorUsedError;
}
