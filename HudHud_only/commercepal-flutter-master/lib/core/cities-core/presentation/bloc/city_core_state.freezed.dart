// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_core_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CityCoreState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(List<City> cities) cities,
    required TResult Function(List<Country> countries) countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(List<City> cities)? cities,
    TResult? Function(List<Country> countries)? countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(List<City> cities)? cities,
    TResult Function(List<Country> countries)? countries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityCoreStateInit value) init,
    required TResult Function(CityCoreStateLoading value) loading,
    required TResult Function(CityCoreStateError value) error,
    required TResult Function(CityCoreStateSuccess value) success,
    required TResult Function(CityCoreStateCities value) cities,
    required TResult Function(CityCoreStateCountries value) countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityCoreStateInit value)? init,
    TResult? Function(CityCoreStateLoading value)? loading,
    TResult? Function(CityCoreStateError value)? error,
    TResult? Function(CityCoreStateSuccess value)? success,
    TResult? Function(CityCoreStateCities value)? cities,
    TResult? Function(CityCoreStateCountries value)? countries,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityCoreStateInit value)? init,
    TResult Function(CityCoreStateLoading value)? loading,
    TResult Function(CityCoreStateError value)? error,
    TResult Function(CityCoreStateSuccess value)? success,
    TResult Function(CityCoreStateCities value)? cities,
    TResult Function(CityCoreStateCountries value)? countries,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityCoreStateCopyWith<$Res> {
  factory $CityCoreStateCopyWith(
          CityCoreState value, $Res Function(CityCoreState) then) =
      _$CityCoreStateCopyWithImpl<$Res, CityCoreState>;
}

/// @nodoc
class _$CityCoreStateCopyWithImpl<$Res, $Val extends CityCoreState>
    implements $CityCoreStateCopyWith<$Res> {
  _$CityCoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CityCoreStateInitCopyWith<$Res> {
  factory _$$CityCoreStateInitCopyWith(
          _$CityCoreStateInit value, $Res Function(_$CityCoreStateInit) then) =
      __$$CityCoreStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityCoreStateInitCopyWithImpl<$Res>
    extends _$CityCoreStateCopyWithImpl<$Res, _$CityCoreStateInit>
    implements _$$CityCoreStateInitCopyWith<$Res> {
  __$$CityCoreStateInitCopyWithImpl(
      _$CityCoreStateInit _value, $Res Function(_$CityCoreStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityCoreStateInit implements CityCoreStateInit {
  const _$CityCoreStateInit();

  @override
  String toString() {
    return 'CityCoreState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CityCoreStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(List<City> cities) cities,
    required TResult Function(List<Country> countries) countries,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(List<City> cities)? cities,
    TResult? Function(List<Country> countries)? countries,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(List<City> cities)? cities,
    TResult Function(List<Country> countries)? countries,
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
    required TResult Function(CityCoreStateInit value) init,
    required TResult Function(CityCoreStateLoading value) loading,
    required TResult Function(CityCoreStateError value) error,
    required TResult Function(CityCoreStateSuccess value) success,
    required TResult Function(CityCoreStateCities value) cities,
    required TResult Function(CityCoreStateCountries value) countries,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityCoreStateInit value)? init,
    TResult? Function(CityCoreStateLoading value)? loading,
    TResult? Function(CityCoreStateError value)? error,
    TResult? Function(CityCoreStateSuccess value)? success,
    TResult? Function(CityCoreStateCities value)? cities,
    TResult? Function(CityCoreStateCountries value)? countries,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityCoreStateInit value)? init,
    TResult Function(CityCoreStateLoading value)? loading,
    TResult Function(CityCoreStateError value)? error,
    TResult Function(CityCoreStateSuccess value)? success,
    TResult Function(CityCoreStateCities value)? cities,
    TResult Function(CityCoreStateCountries value)? countries,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class CityCoreStateInit implements CityCoreState {
  const factory CityCoreStateInit() = _$CityCoreStateInit;
}

/// @nodoc
abstract class _$$CityCoreStateLoadingCopyWith<$Res> {
  factory _$$CityCoreStateLoadingCopyWith(_$CityCoreStateLoading value,
          $Res Function(_$CityCoreStateLoading) then) =
      __$$CityCoreStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CityCoreStateLoadingCopyWithImpl<$Res>
    extends _$CityCoreStateCopyWithImpl<$Res, _$CityCoreStateLoading>
    implements _$$CityCoreStateLoadingCopyWith<$Res> {
  __$$CityCoreStateLoadingCopyWithImpl(_$CityCoreStateLoading _value,
      $Res Function(_$CityCoreStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CityCoreStateLoading implements CityCoreStateLoading {
  const _$CityCoreStateLoading();

  @override
  String toString() {
    return 'CityCoreState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CityCoreStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(List<City> cities) cities,
    required TResult Function(List<Country> countries) countries,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(List<City> cities)? cities,
    TResult? Function(List<Country> countries)? countries,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(List<City> cities)? cities,
    TResult Function(List<Country> countries)? countries,
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
    required TResult Function(CityCoreStateInit value) init,
    required TResult Function(CityCoreStateLoading value) loading,
    required TResult Function(CityCoreStateError value) error,
    required TResult Function(CityCoreStateSuccess value) success,
    required TResult Function(CityCoreStateCities value) cities,
    required TResult Function(CityCoreStateCountries value) countries,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityCoreStateInit value)? init,
    TResult? Function(CityCoreStateLoading value)? loading,
    TResult? Function(CityCoreStateError value)? error,
    TResult? Function(CityCoreStateSuccess value)? success,
    TResult? Function(CityCoreStateCities value)? cities,
    TResult? Function(CityCoreStateCountries value)? countries,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityCoreStateInit value)? init,
    TResult Function(CityCoreStateLoading value)? loading,
    TResult Function(CityCoreStateError value)? error,
    TResult Function(CityCoreStateSuccess value)? success,
    TResult Function(CityCoreStateCities value)? cities,
    TResult Function(CityCoreStateCountries value)? countries,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CityCoreStateLoading implements CityCoreState {
  const factory CityCoreStateLoading() = _$CityCoreStateLoading;
}

/// @nodoc
abstract class _$$CityCoreStateErrorCopyWith<$Res> {
  factory _$$CityCoreStateErrorCopyWith(_$CityCoreStateError value,
          $Res Function(_$CityCoreStateError) then) =
      __$$CityCoreStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CityCoreStateErrorCopyWithImpl<$Res>
    extends _$CityCoreStateCopyWithImpl<$Res, _$CityCoreStateError>
    implements _$$CityCoreStateErrorCopyWith<$Res> {
  __$$CityCoreStateErrorCopyWithImpl(
      _$CityCoreStateError _value, $Res Function(_$CityCoreStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CityCoreStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CityCoreStateError implements CityCoreStateError {
  const _$CityCoreStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CityCoreState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityCoreStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityCoreStateErrorCopyWith<_$CityCoreStateError> get copyWith =>
      __$$CityCoreStateErrorCopyWithImpl<_$CityCoreStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(List<City> cities) cities,
    required TResult Function(List<Country> countries) countries,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(List<City> cities)? cities,
    TResult? Function(List<Country> countries)? countries,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(List<City> cities)? cities,
    TResult Function(List<Country> countries)? countries,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityCoreStateInit value) init,
    required TResult Function(CityCoreStateLoading value) loading,
    required TResult Function(CityCoreStateError value) error,
    required TResult Function(CityCoreStateSuccess value) success,
    required TResult Function(CityCoreStateCities value) cities,
    required TResult Function(CityCoreStateCountries value) countries,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityCoreStateInit value)? init,
    TResult? Function(CityCoreStateLoading value)? loading,
    TResult? Function(CityCoreStateError value)? error,
    TResult? Function(CityCoreStateSuccess value)? success,
    TResult? Function(CityCoreStateCities value)? cities,
    TResult? Function(CityCoreStateCountries value)? countries,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityCoreStateInit value)? init,
    TResult Function(CityCoreStateLoading value)? loading,
    TResult Function(CityCoreStateError value)? error,
    TResult Function(CityCoreStateSuccess value)? success,
    TResult Function(CityCoreStateCities value)? cities,
    TResult Function(CityCoreStateCountries value)? countries,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CityCoreStateError implements CityCoreState {
  const factory CityCoreStateError(final String message) = _$CityCoreStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$CityCoreStateErrorCopyWith<_$CityCoreStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityCoreStateSuccessCopyWith<$Res> {
  factory _$$CityCoreStateSuccessCopyWith(_$CityCoreStateSuccess value,
          $Res Function(_$CityCoreStateSuccess) then) =
      __$$CityCoreStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CityCoreStateSuccessCopyWithImpl<$Res>
    extends _$CityCoreStateCopyWithImpl<$Res, _$CityCoreStateSuccess>
    implements _$$CityCoreStateSuccessCopyWith<$Res> {
  __$$CityCoreStateSuccessCopyWithImpl(_$CityCoreStateSuccess _value,
      $Res Function(_$CityCoreStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CityCoreStateSuccess(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CityCoreStateSuccess implements CityCoreStateSuccess {
  const _$CityCoreStateSuccess(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CityCoreState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityCoreStateSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityCoreStateSuccessCopyWith<_$CityCoreStateSuccess> get copyWith =>
      __$$CityCoreStateSuccessCopyWithImpl<_$CityCoreStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(List<City> cities) cities,
    required TResult Function(List<Country> countries) countries,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(List<City> cities)? cities,
    TResult? Function(List<Country> countries)? countries,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(List<City> cities)? cities,
    TResult Function(List<Country> countries)? countries,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityCoreStateInit value) init,
    required TResult Function(CityCoreStateLoading value) loading,
    required TResult Function(CityCoreStateError value) error,
    required TResult Function(CityCoreStateSuccess value) success,
    required TResult Function(CityCoreStateCities value) cities,
    required TResult Function(CityCoreStateCountries value) countries,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityCoreStateInit value)? init,
    TResult? Function(CityCoreStateLoading value)? loading,
    TResult? Function(CityCoreStateError value)? error,
    TResult? Function(CityCoreStateSuccess value)? success,
    TResult? Function(CityCoreStateCities value)? cities,
    TResult? Function(CityCoreStateCountries value)? countries,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityCoreStateInit value)? init,
    TResult Function(CityCoreStateLoading value)? loading,
    TResult Function(CityCoreStateError value)? error,
    TResult Function(CityCoreStateSuccess value)? success,
    TResult Function(CityCoreStateCities value)? cities,
    TResult Function(CityCoreStateCountries value)? countries,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CityCoreStateSuccess implements CityCoreState {
  const factory CityCoreStateSuccess(final String message) =
      _$CityCoreStateSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$$CityCoreStateSuccessCopyWith<_$CityCoreStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityCoreStateCitiesCopyWith<$Res> {
  factory _$$CityCoreStateCitiesCopyWith(_$CityCoreStateCities value,
          $Res Function(_$CityCoreStateCities) then) =
      __$$CityCoreStateCitiesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<City> cities});
}

/// @nodoc
class __$$CityCoreStateCitiesCopyWithImpl<$Res>
    extends _$CityCoreStateCopyWithImpl<$Res, _$CityCoreStateCities>
    implements _$$CityCoreStateCitiesCopyWith<$Res> {
  __$$CityCoreStateCitiesCopyWithImpl(
      _$CityCoreStateCities _value, $Res Function(_$CityCoreStateCities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = null,
  }) {
    return _then(_$CityCoreStateCities(
      null == cities
          ? _value._cities
          : cities // ignore: cast_nullable_to_non_nullable
              as List<City>,
    ));
  }
}

/// @nodoc

class _$CityCoreStateCities implements CityCoreStateCities {
  const _$CityCoreStateCities(final List<City> cities) : _cities = cities;

  final List<City> _cities;
  @override
  List<City> get cities {
    if (_cities is EqualUnmodifiableListView) return _cities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cities);
  }

  @override
  String toString() {
    return 'CityCoreState.cities(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityCoreStateCities &&
            const DeepCollectionEquality().equals(other._cities, _cities));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityCoreStateCitiesCopyWith<_$CityCoreStateCities> get copyWith =>
      __$$CityCoreStateCitiesCopyWithImpl<_$CityCoreStateCities>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(List<City> cities) cities,
    required TResult Function(List<Country> countries) countries,
  }) {
    return cities(this.cities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(List<City> cities)? cities,
    TResult? Function(List<Country> countries)? countries,
  }) {
    return cities?.call(this.cities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(List<City> cities)? cities,
    TResult Function(List<Country> countries)? countries,
    required TResult orElse(),
  }) {
    if (cities != null) {
      return cities(this.cities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityCoreStateInit value) init,
    required TResult Function(CityCoreStateLoading value) loading,
    required TResult Function(CityCoreStateError value) error,
    required TResult Function(CityCoreStateSuccess value) success,
    required TResult Function(CityCoreStateCities value) cities,
    required TResult Function(CityCoreStateCountries value) countries,
  }) {
    return cities(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityCoreStateInit value)? init,
    TResult? Function(CityCoreStateLoading value)? loading,
    TResult? Function(CityCoreStateError value)? error,
    TResult? Function(CityCoreStateSuccess value)? success,
    TResult? Function(CityCoreStateCities value)? cities,
    TResult? Function(CityCoreStateCountries value)? countries,
  }) {
    return cities?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityCoreStateInit value)? init,
    TResult Function(CityCoreStateLoading value)? loading,
    TResult Function(CityCoreStateError value)? error,
    TResult Function(CityCoreStateSuccess value)? success,
    TResult Function(CityCoreStateCities value)? cities,
    TResult Function(CityCoreStateCountries value)? countries,
    required TResult orElse(),
  }) {
    if (cities != null) {
      return cities(this);
    }
    return orElse();
  }
}

abstract class CityCoreStateCities implements CityCoreState {
  const factory CityCoreStateCities(final List<City> cities) =
      _$CityCoreStateCities;

  List<City> get cities;
  @JsonKey(ignore: true)
  _$$CityCoreStateCitiesCopyWith<_$CityCoreStateCities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityCoreStateCountriesCopyWith<$Res> {
  factory _$$CityCoreStateCountriesCopyWith(_$CityCoreStateCountries value,
          $Res Function(_$CityCoreStateCountries) then) =
      __$$CityCoreStateCountriesCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Country> countries});
}

/// @nodoc
class __$$CityCoreStateCountriesCopyWithImpl<$Res>
    extends _$CityCoreStateCopyWithImpl<$Res, _$CityCoreStateCountries>
    implements _$$CityCoreStateCountriesCopyWith<$Res> {
  __$$CityCoreStateCountriesCopyWithImpl(_$CityCoreStateCountries _value,
      $Res Function(_$CityCoreStateCountries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? countries = null,
  }) {
    return _then(_$CityCoreStateCountries(
      null == countries
          ? _value._countries
          : countries // ignore: cast_nullable_to_non_nullable
              as List<Country>,
    ));
  }
}

/// @nodoc

class _$CityCoreStateCountries implements CityCoreStateCountries {
  const _$CityCoreStateCountries(final List<Country> countries)
      : _countries = countries;

  final List<Country> _countries;
  @override
  List<Country> get countries {
    if (_countries is EqualUnmodifiableListView) return _countries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countries);
  }

  @override
  String toString() {
    return 'CityCoreState.countries(countries: $countries)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityCoreStateCountries &&
            const DeepCollectionEquality()
                .equals(other._countries, _countries));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_countries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CityCoreStateCountriesCopyWith<_$CityCoreStateCountries> get copyWith =>
      __$$CityCoreStateCountriesCopyWithImpl<_$CityCoreStateCountries>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(List<City> cities) cities,
    required TResult Function(List<Country> countries) countries,
  }) {
    return countries(this.countries);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(List<City> cities)? cities,
    TResult? Function(List<Country> countries)? countries,
  }) {
    return countries?.call(this.countries);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(List<City> cities)? cities,
    TResult Function(List<Country> countries)? countries,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this.countries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CityCoreStateInit value) init,
    required TResult Function(CityCoreStateLoading value) loading,
    required TResult Function(CityCoreStateError value) error,
    required TResult Function(CityCoreStateSuccess value) success,
    required TResult Function(CityCoreStateCities value) cities,
    required TResult Function(CityCoreStateCountries value) countries,
  }) {
    return countries(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CityCoreStateInit value)? init,
    TResult? Function(CityCoreStateLoading value)? loading,
    TResult? Function(CityCoreStateError value)? error,
    TResult? Function(CityCoreStateSuccess value)? success,
    TResult? Function(CityCoreStateCities value)? cities,
    TResult? Function(CityCoreStateCountries value)? countries,
  }) {
    return countries?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CityCoreStateInit value)? init,
    TResult Function(CityCoreStateLoading value)? loading,
    TResult Function(CityCoreStateError value)? error,
    TResult Function(CityCoreStateSuccess value)? success,
    TResult Function(CityCoreStateCities value)? cities,
    TResult Function(CityCoreStateCountries value)? countries,
    required TResult orElse(),
  }) {
    if (countries != null) {
      return countries(this);
    }
    return orElse();
  }
}

abstract class CityCoreStateCountries implements CityCoreState {
  const factory CityCoreStateCountries(final List<Country> countries) =
      _$CityCoreStateCountries;

  List<Country> get countries;
  @JsonKey(ignore: true)
  _$$CityCoreStateCountriesCopyWith<_$CityCoreStateCountries> get copyWith =>
      throw _privateConstructorUsedError;
}
