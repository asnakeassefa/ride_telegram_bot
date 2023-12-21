// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(String phoneNumber) setPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(String phoneNumber)? setPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(String phoneNumber)? setPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateSetPin value) setPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateSetPin value)? setPin,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateSetPin value)? setPin,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateInitCopyWith<$Res> {
  factory _$$LoginStateInitCopyWith(
          _$LoginStateInit value, $Res Function(_$LoginStateInit) then) =
      __$$LoginStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateInitCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateInit>
    implements _$$LoginStateInitCopyWith<$Res> {
  __$$LoginStateInitCopyWithImpl(
      _$LoginStateInit _value, $Res Function(_$LoginStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateInit implements LoginStateInit {
  const _$LoginStateInit();

  @override
  String toString() {
    return 'LoginState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateInit);
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
    required TResult Function(String phoneNumber) setPin,
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
    TResult? Function(String phoneNumber)? setPin,
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
    TResult Function(String phoneNumber)? setPin,
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
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateSetPin value) setPin,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateSetPin value)? setPin,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateSetPin value)? setPin,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class LoginStateInit implements LoginState {
  const factory LoginStateInit() = _$LoginStateInit;
}

/// @nodoc
abstract class _$$LoginStateLoadingCopyWith<$Res> {
  factory _$$LoginStateLoadingCopyWith(
          _$LoginStateLoading value, $Res Function(_$LoginStateLoading) then) =
      __$$LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoading>
    implements _$$LoginStateLoadingCopyWith<$Res> {
  __$$LoginStateLoadingCopyWithImpl(
      _$LoginStateLoading _value, $Res Function(_$LoginStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateLoading implements LoginStateLoading {
  const _$LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoading);
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
    required TResult Function(String phoneNumber) setPin,
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
    TResult? Function(String phoneNumber)? setPin,
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
    TResult Function(String phoneNumber)? setPin,
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
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateSetPin value) setPin,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateSetPin value)? setPin,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateSetPin value)? setPin,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoading;
}

/// @nodoc
abstract class _$$LoginStateErrorCopyWith<$Res> {
  factory _$$LoginStateErrorCopyWith(
          _$LoginStateError value, $Res Function(_$LoginStateError) then) =
      __$$LoginStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginStateErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateError>
    implements _$$LoginStateErrorCopyWith<$Res> {
  __$$LoginStateErrorCopyWithImpl(
      _$LoginStateError _value, $Res Function(_$LoginStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginStateError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateError implements LoginStateError {
  const _$LoginStateError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateErrorCopyWith<_$LoginStateError> get copyWith =>
      __$$LoginStateErrorCopyWithImpl<_$LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(String phoneNumber) setPin,
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
    TResult? Function(String phoneNumber)? setPin,
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
    TResult Function(String phoneNumber)? setPin,
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
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateSetPin value) setPin,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateSetPin value)? setPin,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateSetPin value)? setPin,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError(final String message) = _$LoginStateError;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginStateErrorCopyWith<_$LoginStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateSuccessCopyWith<$Res> {
  factory _$$LoginStateSuccessCopyWith(
          _$LoginStateSuccess value, $Res Function(_$LoginStateSuccess) then) =
      __$$LoginStateSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$LoginStateSuccessCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateSuccess>
    implements _$$LoginStateSuccessCopyWith<$Res> {
  __$$LoginStateSuccessCopyWithImpl(
      _$LoginStateSuccess _value, $Res Function(_$LoginStateSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$LoginStateSuccess(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateSuccess implements LoginStateSuccess {
  const _$LoginStateSuccess(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.success(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateSuccessCopyWith<_$LoginStateSuccess> get copyWith =>
      __$$LoginStateSuccessCopyWithImpl<_$LoginStateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(String phoneNumber) setPin,
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
    TResult? Function(String phoneNumber)? setPin,
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
    TResult Function(String phoneNumber)? setPin,
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
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateSetPin value) setPin,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateSetPin value)? setPin,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateSetPin value)? setPin,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LoginStateSuccess implements LoginState {
  const factory LoginStateSuccess(final String message) = _$LoginStateSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$$LoginStateSuccessCopyWith<_$LoginStateSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginStateSetPinCopyWith<$Res> {
  factory _$$LoginStateSetPinCopyWith(
          _$LoginStateSetPin value, $Res Function(_$LoginStateSetPin) then) =
      __$$LoginStateSetPinCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$LoginStateSetPinCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateSetPin>
    implements _$$LoginStateSetPinCopyWith<$Res> {
  __$$LoginStateSetPinCopyWithImpl(
      _$LoginStateSetPin _value, $Res Function(_$LoginStateSetPin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$LoginStateSetPin(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateSetPin implements LoginStateSetPin {
  const _$LoginStateSetPin(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginState.setPin(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateSetPin &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateSetPinCopyWith<_$LoginStateSetPin> get copyWith =>
      __$$LoginStateSetPinCopyWithImpl<_$LoginStateSetPin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
    required TResult Function(String phoneNumber) setPin,
  }) {
    return setPin(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
    TResult? Function(String phoneNumber)? setPin,
  }) {
    return setPin?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    TResult Function(String phoneNumber)? setPin,
    required TResult orElse(),
  }) {
    if (setPin != null) {
      return setPin(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateInit value) init,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateError value) error,
    required TResult Function(LoginStateSuccess value) success,
    required TResult Function(LoginStateSetPin value) setPin,
  }) {
    return setPin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateInit value)? init,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateError value)? error,
    TResult? Function(LoginStateSuccess value)? success,
    TResult? Function(LoginStateSetPin value)? setPin,
  }) {
    return setPin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateInit value)? init,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateError value)? error,
    TResult Function(LoginStateSuccess value)? success,
    TResult Function(LoginStateSetPin value)? setPin,
    required TResult orElse(),
  }) {
    if (setPin != null) {
      return setPin(this);
    }
    return orElse();
  }
}

abstract class LoginStateSetPin implements LoginState {
  const factory LoginStateSetPin(final String phoneNumber) = _$LoginStateSetPin;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$LoginStateSetPinCopyWith<_$LoginStateSetPin> get copyWith =>
      throw _privateConstructorUsedError;
}
