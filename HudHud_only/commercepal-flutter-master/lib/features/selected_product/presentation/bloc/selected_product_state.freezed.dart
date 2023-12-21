// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_product_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(SelectedProductDetails product) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(SelectedProductDetails product)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(SelectedProductDetails product)? product,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedProductStateInitial value) initial,
    required TResult Function(SelectedProductStateLoading value) loading,
    required TResult Function(SelectedProductStateError value) error,
    required TResult Function(SelectedProductStateProduct value) product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedProductStateInitial value)? initial,
    TResult? Function(SelectedProductStateLoading value)? loading,
    TResult? Function(SelectedProductStateError value)? error,
    TResult? Function(SelectedProductStateProduct value)? product,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedProductStateInitial value)? initial,
    TResult Function(SelectedProductStateLoading value)? loading,
    TResult Function(SelectedProductStateError value)? error,
    TResult Function(SelectedProductStateProduct value)? product,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedProductStateCopyWith<$Res> {
  factory $SelectedProductStateCopyWith(SelectedProductState value,
          $Res Function(SelectedProductState) then) =
      _$SelectedProductStateCopyWithImpl<$Res, SelectedProductState>;
}

/// @nodoc
class _$SelectedProductStateCopyWithImpl<$Res,
        $Val extends SelectedProductState>
    implements $SelectedProductStateCopyWith<$Res> {
  _$SelectedProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectedProductStateInitialCopyWith<$Res> {
  factory _$$SelectedProductStateInitialCopyWith(
          _$SelectedProductStateInitial value,
          $Res Function(_$SelectedProductStateInitial) then) =
      __$$SelectedProductStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectedProductStateInitialCopyWithImpl<$Res>
    extends _$SelectedProductStateCopyWithImpl<$Res,
        _$SelectedProductStateInitial>
    implements _$$SelectedProductStateInitialCopyWith<$Res> {
  __$$SelectedProductStateInitialCopyWithImpl(
      _$SelectedProductStateInitial _value,
      $Res Function(_$SelectedProductStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectedProductStateInitial implements SelectedProductStateInitial {
  const _$SelectedProductStateInitial();

  @override
  String toString() {
    return 'SelectedProductState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedProductStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(SelectedProductDetails product) product,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(SelectedProductDetails product)? product,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(SelectedProductDetails product)? product,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedProductStateInitial value) initial,
    required TResult Function(SelectedProductStateLoading value) loading,
    required TResult Function(SelectedProductStateError value) error,
    required TResult Function(SelectedProductStateProduct value) product,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedProductStateInitial value)? initial,
    TResult? Function(SelectedProductStateLoading value)? loading,
    TResult? Function(SelectedProductStateError value)? error,
    TResult? Function(SelectedProductStateProduct value)? product,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedProductStateInitial value)? initial,
    TResult Function(SelectedProductStateLoading value)? loading,
    TResult Function(SelectedProductStateError value)? error,
    TResult Function(SelectedProductStateProduct value)? product,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SelectedProductStateInitial implements SelectedProductState {
  const factory SelectedProductStateInitial() = _$SelectedProductStateInitial;
}

/// @nodoc
abstract class _$$SelectedProductStateLoadingCopyWith<$Res> {
  factory _$$SelectedProductStateLoadingCopyWith(
          _$SelectedProductStateLoading value,
          $Res Function(_$SelectedProductStateLoading) then) =
      __$$SelectedProductStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectedProductStateLoadingCopyWithImpl<$Res>
    extends _$SelectedProductStateCopyWithImpl<$Res,
        _$SelectedProductStateLoading>
    implements _$$SelectedProductStateLoadingCopyWith<$Res> {
  __$$SelectedProductStateLoadingCopyWithImpl(
      _$SelectedProductStateLoading _value,
      $Res Function(_$SelectedProductStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectedProductStateLoading implements SelectedProductStateLoading {
  const _$SelectedProductStateLoading();

  @override
  String toString() {
    return 'SelectedProductState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedProductStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(SelectedProductDetails product) product,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(SelectedProductDetails product)? product,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(SelectedProductDetails product)? product,
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
    required TResult Function(SelectedProductStateInitial value) initial,
    required TResult Function(SelectedProductStateLoading value) loading,
    required TResult Function(SelectedProductStateError value) error,
    required TResult Function(SelectedProductStateProduct value) product,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedProductStateInitial value)? initial,
    TResult? Function(SelectedProductStateLoading value)? loading,
    TResult? Function(SelectedProductStateError value)? error,
    TResult? Function(SelectedProductStateProduct value)? product,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedProductStateInitial value)? initial,
    TResult Function(SelectedProductStateLoading value)? loading,
    TResult Function(SelectedProductStateError value)? error,
    TResult Function(SelectedProductStateProduct value)? product,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SelectedProductStateLoading implements SelectedProductState {
  const factory SelectedProductStateLoading() = _$SelectedProductStateLoading;
}

/// @nodoc
abstract class _$$SelectedProductStateErrorCopyWith<$Res> {
  factory _$$SelectedProductStateErrorCopyWith(
          _$SelectedProductStateError value,
          $Res Function(_$SelectedProductStateError) then) =
      __$$SelectedProductStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SelectedProductStateErrorCopyWithImpl<$Res>
    extends _$SelectedProductStateCopyWithImpl<$Res,
        _$SelectedProductStateError>
    implements _$$SelectedProductStateErrorCopyWith<$Res> {
  __$$SelectedProductStateErrorCopyWithImpl(_$SelectedProductStateError _value,
      $Res Function(_$SelectedProductStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SelectedProductStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectedProductStateError implements SelectedProductStateError {
  const _$SelectedProductStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SelectedProductState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedProductStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedProductStateErrorCopyWith<_$SelectedProductStateError>
      get copyWith => __$$SelectedProductStateErrorCopyWithImpl<
          _$SelectedProductStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(SelectedProductDetails product) product,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(SelectedProductDetails product)? product,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(SelectedProductDetails product)? product,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedProductStateInitial value) initial,
    required TResult Function(SelectedProductStateLoading value) loading,
    required TResult Function(SelectedProductStateError value) error,
    required TResult Function(SelectedProductStateProduct value) product,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedProductStateInitial value)? initial,
    TResult? Function(SelectedProductStateLoading value)? loading,
    TResult? Function(SelectedProductStateError value)? error,
    TResult? Function(SelectedProductStateProduct value)? product,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedProductStateInitial value)? initial,
    TResult Function(SelectedProductStateLoading value)? loading,
    TResult Function(SelectedProductStateError value)? error,
    TResult Function(SelectedProductStateProduct value)? product,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SelectedProductStateError implements SelectedProductState {
  const factory SelectedProductStateError(final String error) =
      _$SelectedProductStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$SelectedProductStateErrorCopyWith<_$SelectedProductStateError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedProductStateProductCopyWith<$Res> {
  factory _$$SelectedProductStateProductCopyWith(
          _$SelectedProductStateProduct value,
          $Res Function(_$SelectedProductStateProduct) then) =
      __$$SelectedProductStateProductCopyWithImpl<$Res>;
  @useResult
  $Res call({SelectedProductDetails product});
}

/// @nodoc
class __$$SelectedProductStateProductCopyWithImpl<$Res>
    extends _$SelectedProductStateCopyWithImpl<$Res,
        _$SelectedProductStateProduct>
    implements _$$SelectedProductStateProductCopyWith<$Res> {
  __$$SelectedProductStateProductCopyWithImpl(
      _$SelectedProductStateProduct _value,
      $Res Function(_$SelectedProductStateProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
  }) {
    return _then(_$SelectedProductStateProduct(
      null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as SelectedProductDetails,
    ));
  }
}

/// @nodoc

class _$SelectedProductStateProduct implements SelectedProductStateProduct {
  const _$SelectedProductStateProduct(this.product);

  @override
  final SelectedProductDetails product;

  @override
  String toString() {
    return 'SelectedProductState.product(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedProductStateProduct &&
            (identical(other.product, product) || other.product == product));
  }

  @override
  int get hashCode => Object.hash(runtimeType, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedProductStateProductCopyWith<_$SelectedProductStateProduct>
      get copyWith => __$$SelectedProductStateProductCopyWithImpl<
          _$SelectedProductStateProduct>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(SelectedProductDetails product) product,
  }) {
    return product(this.product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(SelectedProductDetails product)? product,
  }) {
    return product?.call(this.product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(SelectedProductDetails product)? product,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this.product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SelectedProductStateInitial value) initial,
    required TResult Function(SelectedProductStateLoading value) loading,
    required TResult Function(SelectedProductStateError value) error,
    required TResult Function(SelectedProductStateProduct value) product,
  }) {
    return product(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SelectedProductStateInitial value)? initial,
    TResult? Function(SelectedProductStateLoading value)? loading,
    TResult? Function(SelectedProductStateError value)? error,
    TResult? Function(SelectedProductStateProduct value)? product,
  }) {
    return product?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SelectedProductStateInitial value)? initial,
    TResult Function(SelectedProductStateLoading value)? loading,
    TResult Function(SelectedProductStateError value)? error,
    TResult Function(SelectedProductStateProduct value)? product,
    required TResult orElse(),
  }) {
    if (product != null) {
      return product(this);
    }
    return orElse();
  }
}

abstract class SelectedProductStateProduct implements SelectedProductState {
  const factory SelectedProductStateProduct(
      final SelectedProductDetails product) = _$SelectedProductStateProduct;

  SelectedProductDetails get product;
  @JsonKey(ignore: true)
  _$$SelectedProductStateProductCopyWith<_$SelectedProductStateProduct>
      get copyWith => throw _privateConstructorUsedError;
}
