// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SessionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String platform) forceUpdate,
    required TResult Function() loginUser,
    required TResult Function(String error) error,
    required TResult Function(bool isBusiness) isBusinessUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String platform)? forceUpdate,
    TResult? Function()? loginUser,
    TResult? Function(String error)? error,
    TResult? Function(bool isBusiness)? isBusinessUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String platform)? forceUpdate,
    TResult Function()? loginUser,
    TResult Function(String error)? error,
    TResult Function(bool isBusiness)? isBusinessUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionStateInit value) init,
    required TResult Function(SessionStateLoading value) loading,
    required TResult Function(SessionStateForceUpdate value) forceUpdate,
    required TResult Function(SessionStateLogin value) loginUser,
    required TResult Function(SessionStateError value) error,
    required TResult Function(SessionBusinessUserState value) isBusinessUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionStateInit value)? init,
    TResult? Function(SessionStateLoading value)? loading,
    TResult? Function(SessionStateForceUpdate value)? forceUpdate,
    TResult? Function(SessionStateLogin value)? loginUser,
    TResult? Function(SessionStateError value)? error,
    TResult? Function(SessionBusinessUserState value)? isBusinessUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionStateInit value)? init,
    TResult Function(SessionStateLoading value)? loading,
    TResult Function(SessionStateForceUpdate value)? forceUpdate,
    TResult Function(SessionStateLogin value)? loginUser,
    TResult Function(SessionStateError value)? error,
    TResult Function(SessionBusinessUserState value)? isBusinessUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionStateCopyWith<$Res> {
  factory $SessionStateCopyWith(
          SessionState value, $Res Function(SessionState) then) =
      _$SessionStateCopyWithImpl<$Res, SessionState>;
}

/// @nodoc
class _$SessionStateCopyWithImpl<$Res, $Val extends SessionState>
    implements $SessionStateCopyWith<$Res> {
  _$SessionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SessionStateInitCopyWith<$Res> {
  factory _$$SessionStateInitCopyWith(
          _$SessionStateInit value, $Res Function(_$SessionStateInit) then) =
      __$$SessionStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionStateInitCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateInit>
    implements _$$SessionStateInitCopyWith<$Res> {
  __$$SessionStateInitCopyWithImpl(
      _$SessionStateInit _value, $Res Function(_$SessionStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionStateInit implements SessionStateInit {
  const _$SessionStateInit();

  @override
  String toString() {
    return 'SessionState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String platform) forceUpdate,
    required TResult Function() loginUser,
    required TResult Function(String error) error,
    required TResult Function(bool isBusiness) isBusinessUser,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String platform)? forceUpdate,
    TResult? Function()? loginUser,
    TResult? Function(String error)? error,
    TResult? Function(bool isBusiness)? isBusinessUser,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String platform)? forceUpdate,
    TResult Function()? loginUser,
    TResult Function(String error)? error,
    TResult Function(bool isBusiness)? isBusinessUser,
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
    required TResult Function(SessionStateInit value) init,
    required TResult Function(SessionStateLoading value) loading,
    required TResult Function(SessionStateForceUpdate value) forceUpdate,
    required TResult Function(SessionStateLogin value) loginUser,
    required TResult Function(SessionStateError value) error,
    required TResult Function(SessionBusinessUserState value) isBusinessUser,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionStateInit value)? init,
    TResult? Function(SessionStateLoading value)? loading,
    TResult? Function(SessionStateForceUpdate value)? forceUpdate,
    TResult? Function(SessionStateLogin value)? loginUser,
    TResult? Function(SessionStateError value)? error,
    TResult? Function(SessionBusinessUserState value)? isBusinessUser,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionStateInit value)? init,
    TResult Function(SessionStateLoading value)? loading,
    TResult Function(SessionStateForceUpdate value)? forceUpdate,
    TResult Function(SessionStateLogin value)? loginUser,
    TResult Function(SessionStateError value)? error,
    TResult Function(SessionBusinessUserState value)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class SessionStateInit implements SessionState {
  const factory SessionStateInit() = _$SessionStateInit;
}

/// @nodoc
abstract class _$$SessionStateLoadingCopyWith<$Res> {
  factory _$$SessionStateLoadingCopyWith(_$SessionStateLoading value,
          $Res Function(_$SessionStateLoading) then) =
      __$$SessionStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionStateLoadingCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateLoading>
    implements _$$SessionStateLoadingCopyWith<$Res> {
  __$$SessionStateLoadingCopyWithImpl(
      _$SessionStateLoading _value, $Res Function(_$SessionStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionStateLoading implements SessionStateLoading {
  const _$SessionStateLoading();

  @override
  String toString() {
    return 'SessionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String platform) forceUpdate,
    required TResult Function() loginUser,
    required TResult Function(String error) error,
    required TResult Function(bool isBusiness) isBusinessUser,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String platform)? forceUpdate,
    TResult? Function()? loginUser,
    TResult? Function(String error)? error,
    TResult? Function(bool isBusiness)? isBusinessUser,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String platform)? forceUpdate,
    TResult Function()? loginUser,
    TResult Function(String error)? error,
    TResult Function(bool isBusiness)? isBusinessUser,
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
    required TResult Function(SessionStateInit value) init,
    required TResult Function(SessionStateLoading value) loading,
    required TResult Function(SessionStateForceUpdate value) forceUpdate,
    required TResult Function(SessionStateLogin value) loginUser,
    required TResult Function(SessionStateError value) error,
    required TResult Function(SessionBusinessUserState value) isBusinessUser,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionStateInit value)? init,
    TResult? Function(SessionStateLoading value)? loading,
    TResult? Function(SessionStateForceUpdate value)? forceUpdate,
    TResult? Function(SessionStateLogin value)? loginUser,
    TResult? Function(SessionStateError value)? error,
    TResult? Function(SessionBusinessUserState value)? isBusinessUser,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionStateInit value)? init,
    TResult Function(SessionStateLoading value)? loading,
    TResult Function(SessionStateForceUpdate value)? forceUpdate,
    TResult Function(SessionStateLogin value)? loginUser,
    TResult Function(SessionStateError value)? error,
    TResult Function(SessionBusinessUserState value)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SessionStateLoading implements SessionState {
  const factory SessionStateLoading() = _$SessionStateLoading;
}

/// @nodoc
abstract class _$$SessionStateForceUpdateCopyWith<$Res> {
  factory _$$SessionStateForceUpdateCopyWith(_$SessionStateForceUpdate value,
          $Res Function(_$SessionStateForceUpdate) then) =
      __$$SessionStateForceUpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({String platform});
}

/// @nodoc
class __$$SessionStateForceUpdateCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateForceUpdate>
    implements _$$SessionStateForceUpdateCopyWith<$Res> {
  __$$SessionStateForceUpdateCopyWithImpl(_$SessionStateForceUpdate _value,
      $Res Function(_$SessionStateForceUpdate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
  }) {
    return _then(_$SessionStateForceUpdate(
      null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SessionStateForceUpdate implements SessionStateForceUpdate {
  const _$SessionStateForceUpdate(this.platform);

  @override
  final String platform;

  @override
  String toString() {
    return 'SessionState.forceUpdate(platform: $platform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionStateForceUpdate &&
            (identical(other.platform, platform) ||
                other.platform == platform));
  }

  @override
  int get hashCode => Object.hash(runtimeType, platform);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionStateForceUpdateCopyWith<_$SessionStateForceUpdate> get copyWith =>
      __$$SessionStateForceUpdateCopyWithImpl<_$SessionStateForceUpdate>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String platform) forceUpdate,
    required TResult Function() loginUser,
    required TResult Function(String error) error,
    required TResult Function(bool isBusiness) isBusinessUser,
  }) {
    return forceUpdate(platform);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String platform)? forceUpdate,
    TResult? Function()? loginUser,
    TResult? Function(String error)? error,
    TResult? Function(bool isBusiness)? isBusinessUser,
  }) {
    return forceUpdate?.call(platform);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String platform)? forceUpdate,
    TResult Function()? loginUser,
    TResult Function(String error)? error,
    TResult Function(bool isBusiness)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (forceUpdate != null) {
      return forceUpdate(platform);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionStateInit value) init,
    required TResult Function(SessionStateLoading value) loading,
    required TResult Function(SessionStateForceUpdate value) forceUpdate,
    required TResult Function(SessionStateLogin value) loginUser,
    required TResult Function(SessionStateError value) error,
    required TResult Function(SessionBusinessUserState value) isBusinessUser,
  }) {
    return forceUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionStateInit value)? init,
    TResult? Function(SessionStateLoading value)? loading,
    TResult? Function(SessionStateForceUpdate value)? forceUpdate,
    TResult? Function(SessionStateLogin value)? loginUser,
    TResult? Function(SessionStateError value)? error,
    TResult? Function(SessionBusinessUserState value)? isBusinessUser,
  }) {
    return forceUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionStateInit value)? init,
    TResult Function(SessionStateLoading value)? loading,
    TResult Function(SessionStateForceUpdate value)? forceUpdate,
    TResult Function(SessionStateLogin value)? loginUser,
    TResult Function(SessionStateError value)? error,
    TResult Function(SessionBusinessUserState value)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (forceUpdate != null) {
      return forceUpdate(this);
    }
    return orElse();
  }
}

abstract class SessionStateForceUpdate implements SessionState {
  const factory SessionStateForceUpdate(final String platform) =
      _$SessionStateForceUpdate;

  String get platform;
  @JsonKey(ignore: true)
  _$$SessionStateForceUpdateCopyWith<_$SessionStateForceUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionStateLoginCopyWith<$Res> {
  factory _$$SessionStateLoginCopyWith(
          _$SessionStateLogin value, $Res Function(_$SessionStateLogin) then) =
      __$$SessionStateLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SessionStateLoginCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateLogin>
    implements _$$SessionStateLoginCopyWith<$Res> {
  __$$SessionStateLoginCopyWithImpl(
      _$SessionStateLogin _value, $Res Function(_$SessionStateLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SessionStateLogin implements SessionStateLogin {
  const _$SessionStateLogin();

  @override
  String toString() {
    return 'SessionState.loginUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SessionStateLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String platform) forceUpdate,
    required TResult Function() loginUser,
    required TResult Function(String error) error,
    required TResult Function(bool isBusiness) isBusinessUser,
  }) {
    return loginUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String platform)? forceUpdate,
    TResult? Function()? loginUser,
    TResult? Function(String error)? error,
    TResult? Function(bool isBusiness)? isBusinessUser,
  }) {
    return loginUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String platform)? forceUpdate,
    TResult Function()? loginUser,
    TResult Function(String error)? error,
    TResult Function(bool isBusiness)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionStateInit value) init,
    required TResult Function(SessionStateLoading value) loading,
    required TResult Function(SessionStateForceUpdate value) forceUpdate,
    required TResult Function(SessionStateLogin value) loginUser,
    required TResult Function(SessionStateError value) error,
    required TResult Function(SessionBusinessUserState value) isBusinessUser,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionStateInit value)? init,
    TResult? Function(SessionStateLoading value)? loading,
    TResult? Function(SessionStateForceUpdate value)? forceUpdate,
    TResult? Function(SessionStateLogin value)? loginUser,
    TResult? Function(SessionStateError value)? error,
    TResult? Function(SessionBusinessUserState value)? isBusinessUser,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionStateInit value)? init,
    TResult Function(SessionStateLoading value)? loading,
    TResult Function(SessionStateForceUpdate value)? forceUpdate,
    TResult Function(SessionStateLogin value)? loginUser,
    TResult Function(SessionStateError value)? error,
    TResult Function(SessionBusinessUserState value)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class SessionStateLogin implements SessionState {
  const factory SessionStateLogin() = _$SessionStateLogin;
}

/// @nodoc
abstract class _$$SessionStateErrorCopyWith<$Res> {
  factory _$$SessionStateErrorCopyWith(
          _$SessionStateError value, $Res Function(_$SessionStateError) then) =
      __$$SessionStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SessionStateErrorCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionStateError>
    implements _$$SessionStateErrorCopyWith<$Res> {
  __$$SessionStateErrorCopyWithImpl(
      _$SessionStateError _value, $Res Function(_$SessionStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SessionStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SessionStateError implements SessionStateError {
  const _$SessionStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'SessionState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionStateErrorCopyWith<_$SessionStateError> get copyWith =>
      __$$SessionStateErrorCopyWithImpl<_$SessionStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String platform) forceUpdate,
    required TResult Function() loginUser,
    required TResult Function(String error) error,
    required TResult Function(bool isBusiness) isBusinessUser,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String platform)? forceUpdate,
    TResult? Function()? loginUser,
    TResult? Function(String error)? error,
    TResult? Function(bool isBusiness)? isBusinessUser,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String platform)? forceUpdate,
    TResult Function()? loginUser,
    TResult Function(String error)? error,
    TResult Function(bool isBusiness)? isBusinessUser,
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
    required TResult Function(SessionStateInit value) init,
    required TResult Function(SessionStateLoading value) loading,
    required TResult Function(SessionStateForceUpdate value) forceUpdate,
    required TResult Function(SessionStateLogin value) loginUser,
    required TResult Function(SessionStateError value) error,
    required TResult Function(SessionBusinessUserState value) isBusinessUser,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionStateInit value)? init,
    TResult? Function(SessionStateLoading value)? loading,
    TResult? Function(SessionStateForceUpdate value)? forceUpdate,
    TResult? Function(SessionStateLogin value)? loginUser,
    TResult? Function(SessionStateError value)? error,
    TResult? Function(SessionBusinessUserState value)? isBusinessUser,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionStateInit value)? init,
    TResult Function(SessionStateLoading value)? loading,
    TResult Function(SessionStateForceUpdate value)? forceUpdate,
    TResult Function(SessionStateLogin value)? loginUser,
    TResult Function(SessionStateError value)? error,
    TResult Function(SessionBusinessUserState value)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SessionStateError implements SessionState {
  const factory SessionStateError(final String error) = _$SessionStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$SessionStateErrorCopyWith<_$SessionStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SessionBusinessUserStateCopyWith<$Res> {
  factory _$$SessionBusinessUserStateCopyWith(_$SessionBusinessUserState value,
          $Res Function(_$SessionBusinessUserState) then) =
      __$$SessionBusinessUserStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isBusiness});
}

/// @nodoc
class __$$SessionBusinessUserStateCopyWithImpl<$Res>
    extends _$SessionStateCopyWithImpl<$Res, _$SessionBusinessUserState>
    implements _$$SessionBusinessUserStateCopyWith<$Res> {
  __$$SessionBusinessUserStateCopyWithImpl(_$SessionBusinessUserState _value,
      $Res Function(_$SessionBusinessUserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isBusiness = null,
  }) {
    return _then(_$SessionBusinessUserState(
      null == isBusiness
          ? _value.isBusiness
          : isBusiness // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SessionBusinessUserState implements SessionBusinessUserState {
  const _$SessionBusinessUserState(this.isBusiness);

  @override
  final bool isBusiness;

  @override
  String toString() {
    return 'SessionState.isBusinessUser(isBusiness: $isBusiness)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionBusinessUserState &&
            (identical(other.isBusiness, isBusiness) ||
                other.isBusiness == isBusiness));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isBusiness);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionBusinessUserStateCopyWith<_$SessionBusinessUserState>
      get copyWith =>
          __$$SessionBusinessUserStateCopyWithImpl<_$SessionBusinessUserState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(String platform) forceUpdate,
    required TResult Function() loginUser,
    required TResult Function(String error) error,
    required TResult Function(bool isBusiness) isBusinessUser,
  }) {
    return isBusinessUser(isBusiness);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? loading,
    TResult? Function(String platform)? forceUpdate,
    TResult? Function()? loginUser,
    TResult? Function(String error)? error,
    TResult? Function(bool isBusiness)? isBusinessUser,
  }) {
    return isBusinessUser?.call(isBusiness);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(String platform)? forceUpdate,
    TResult Function()? loginUser,
    TResult Function(String error)? error,
    TResult Function(bool isBusiness)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (isBusinessUser != null) {
      return isBusinessUser(isBusiness);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SessionStateInit value) init,
    required TResult Function(SessionStateLoading value) loading,
    required TResult Function(SessionStateForceUpdate value) forceUpdate,
    required TResult Function(SessionStateLogin value) loginUser,
    required TResult Function(SessionStateError value) error,
    required TResult Function(SessionBusinessUserState value) isBusinessUser,
  }) {
    return isBusinessUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SessionStateInit value)? init,
    TResult? Function(SessionStateLoading value)? loading,
    TResult? Function(SessionStateForceUpdate value)? forceUpdate,
    TResult? Function(SessionStateLogin value)? loginUser,
    TResult? Function(SessionStateError value)? error,
    TResult? Function(SessionBusinessUserState value)? isBusinessUser,
  }) {
    return isBusinessUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SessionStateInit value)? init,
    TResult Function(SessionStateLoading value)? loading,
    TResult Function(SessionStateForceUpdate value)? forceUpdate,
    TResult Function(SessionStateLogin value)? loginUser,
    TResult Function(SessionStateError value)? error,
    TResult Function(SessionBusinessUserState value)? isBusinessUser,
    required TResult orElse(),
  }) {
    if (isBusinessUser != null) {
      return isBusinessUser(this);
    }
    return orElse();
  }
}

abstract class SessionBusinessUserState implements SessionState {
  const factory SessionBusinessUserState(final bool isBusiness) =
      _$SessionBusinessUserState;

  bool get isBusiness;
  @JsonKey(ignore: true)
  _$$SessionBusinessUserStateCopyWith<_$SessionBusinessUserState>
      get copyWith => throw _privateConstructorUsedError;
}
