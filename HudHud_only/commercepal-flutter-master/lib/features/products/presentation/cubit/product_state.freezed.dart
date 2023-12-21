// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<Product> product) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<Product> product)? products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<Product> product)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductStateInit value) init,
    required TResult Function(ProductStateError value) error,
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateData value) products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateInit value)? init,
    TResult? Function(ProductStateError value)? error,
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateData value)? products,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateInit value)? init,
    TResult Function(ProductStateError value)? error,
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateData value)? products,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductStateInitCopyWith<$Res> {
  factory _$$ProductStateInitCopyWith(
          _$ProductStateInit value, $Res Function(_$ProductStateInit) then) =
      __$$ProductStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductStateInitCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateInit>
    implements _$$ProductStateInitCopyWith<$Res> {
  __$$ProductStateInitCopyWithImpl(
      _$ProductStateInit _value, $Res Function(_$ProductStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductStateInit implements ProductStateInit {
  const _$ProductStateInit();

  @override
  String toString() {
    return 'ProductState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<Product> product) products,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<Product> product)? products,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<Product> product)? products,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductStateInit value) init,
    required TResult Function(ProductStateError value) error,
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateData value) products,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateInit value)? init,
    TResult? Function(ProductStateError value)? error,
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateData value)? products,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateInit value)? init,
    TResult Function(ProductStateError value)? error,
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateData value)? products,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class ProductStateInit implements ProductState {
  const factory ProductStateInit() = _$ProductStateInit;
}

/// @nodoc
abstract class _$$ProductStateErrorCopyWith<$Res> {
  factory _$$ProductStateErrorCopyWith(
          _$ProductStateError value, $Res Function(_$ProductStateError) then) =
      __$$ProductStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ProductStateErrorCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateError>
    implements _$$ProductStateErrorCopyWith<$Res> {
  __$$ProductStateErrorCopyWithImpl(
      _$ProductStateError _value, $Res Function(_$ProductStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ProductStateError(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProductStateError implements ProductStateError {
  const _$ProductStateError(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ProductState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateError &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateErrorCopyWith<_$ProductStateError> get copyWith =>
      __$$ProductStateErrorCopyWithImpl<_$ProductStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<Product> product) products,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<Product> product)? products,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<Product> product)? products,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductStateInit value) init,
    required TResult Function(ProductStateError value) error,
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateData value) products,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateInit value)? init,
    TResult? Function(ProductStateError value)? error,
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateData value)? products,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateInit value)? init,
    TResult Function(ProductStateError value)? error,
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateData value)? products,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProductStateError implements ProductState {
  const factory ProductStateError(final String errorMessage) =
      _$ProductStateError;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ProductStateErrorCopyWith<_$ProductStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProductStateLoadingCopyWith<$Res> {
  factory _$$ProductStateLoadingCopyWith(_$ProductStateLoading value,
          $Res Function(_$ProductStateLoading) then) =
      __$$ProductStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductStateLoadingCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateLoading>
    implements _$$ProductStateLoadingCopyWith<$Res> {
  __$$ProductStateLoadingCopyWithImpl(
      _$ProductStateLoading _value, $Res Function(_$ProductStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductStateLoading implements ProductStateLoading {
  const _$ProductStateLoading();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<Product> product) products,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<Product> product)? products,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<Product> product)? products,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductStateInit value) init,
    required TResult Function(ProductStateError value) error,
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateData value) products,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateInit value)? init,
    TResult? Function(ProductStateError value)? error,
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateData value)? products,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateInit value)? init,
    TResult Function(ProductStateError value)? error,
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateData value)? products,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProductStateLoading implements ProductState {
  const factory ProductStateLoading() = _$ProductStateLoading;
}

/// @nodoc
abstract class _$$ProductStateDataCopyWith<$Res> {
  factory _$$ProductStateDataCopyWith(
          _$ProductStateData value, $Res Function(_$ProductStateData) then) =
      __$$ProductStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Product> product});
}

/// @nodoc
class __$$ProductStateDataCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateData>
    implements _$$ProductStateDataCopyWith<$Res> {
  __$$ProductStateDataCopyWithImpl(
      _$ProductStateData _value, $Res Function(_$ProductStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$ProductStateData(
      null == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$ProductStateData implements ProductStateData {
  const _$ProductStateData(final List<Product> product) : _product = product;

  final List<Product> _product;
  @override
  List<Product> get product {
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_product);
  }

  @override
  String toString() {
    return 'ProductState.products(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateData &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateDataCopyWith<_$ProductStateData> get copyWith =>
      __$$ProductStateDataCopyWithImpl<_$ProductStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String errorMessage) error,
    required TResult Function() loading,
    required TResult Function(List<Product> product) products,
  }) {
    return products(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String errorMessage)? error,
    TResult? Function()? loading,
    TResult? Function(List<Product> product)? products,
  }) {
    return products?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String errorMessage)? error,
    TResult Function()? loading,
    TResult Function(List<Product> product)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductStateInit value) init,
    required TResult Function(ProductStateError value) error,
    required TResult Function(ProductStateLoading value) loading,
    required TResult Function(ProductStateData value) products,
  }) {
    return products(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductStateInit value)? init,
    TResult? Function(ProductStateError value)? error,
    TResult? Function(ProductStateLoading value)? loading,
    TResult? Function(ProductStateData value)? products,
  }) {
    return products?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductStateInit value)? init,
    TResult Function(ProductStateError value)? error,
    TResult Function(ProductStateLoading value)? loading,
    TResult Function(ProductStateData value)? products,
    required TResult orElse(),
  }) {
    if (products != null) {
      return products(this);
    }
    return orElse();
  }
}

abstract class ProductStateData implements ProductState {
  const factory ProductStateData(final List<Product> product) =
      _$ProductStateData;

  List<Product> get product;
  @JsonKey(ignore: true)
  _$$ProductStateDataCopyWith<_$ProductStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
