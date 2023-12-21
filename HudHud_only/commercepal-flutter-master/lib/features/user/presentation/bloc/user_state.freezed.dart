// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userNotLoggedIn,
    required TResult Function(UserModel userModel) user,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userNotLoggedIn,
    TResult? Function(UserModel userModel)? user,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userNotLoggedIn,
    TResult Function(UserModel userModel)? user,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateNotLoggedIn value) userNotLoggedIn,
    required TResult Function(UserStateData value) user,
    required TResult Function(UserStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult? Function(UserStateData value)? user,
    TResult? Function(UserStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult Function(UserStateData value)? user,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserStateInitCopyWith<$Res> {
  factory _$$UserStateInitCopyWith(
          _$UserStateInit value, $Res Function(_$UserStateInit) then) =
      __$$UserStateInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateInitCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateInit>
    implements _$$UserStateInitCopyWith<$Res> {
  __$$UserStateInitCopyWithImpl(
      _$UserStateInit _value, $Res Function(_$UserStateInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateInit implements UserStateInit {
  const _$UserStateInit();

  @override
  String toString() {
    return 'UserState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userNotLoggedIn,
    required TResult Function(UserModel userModel) user,
    required TResult Function(String error) error,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userNotLoggedIn,
    TResult? Function(UserModel userModel)? user,
    TResult? Function(String error)? error,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userNotLoggedIn,
    TResult Function(UserModel userModel)? user,
    TResult Function(String error)? error,
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
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateNotLoggedIn value) userNotLoggedIn,
    required TResult Function(UserStateData value) user,
    required TResult Function(UserStateError value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult? Function(UserStateData value)? user,
    TResult? Function(UserStateError value)? error,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult Function(UserStateData value)? user,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class UserStateInit implements UserState {
  const factory UserStateInit() = _$UserStateInit;
}

/// @nodoc
abstract class _$$UserStateNotLoggedInCopyWith<$Res> {
  factory _$$UserStateNotLoggedInCopyWith(_$UserStateNotLoggedIn value,
          $Res Function(_$UserStateNotLoggedIn) then) =
      __$$UserStateNotLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserStateNotLoggedInCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateNotLoggedIn>
    implements _$$UserStateNotLoggedInCopyWith<$Res> {
  __$$UserStateNotLoggedInCopyWithImpl(_$UserStateNotLoggedIn _value,
      $Res Function(_$UserStateNotLoggedIn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserStateNotLoggedIn implements UserStateNotLoggedIn {
  const _$UserStateNotLoggedIn();

  @override
  String toString() {
    return 'UserState.userNotLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserStateNotLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userNotLoggedIn,
    required TResult Function(UserModel userModel) user,
    required TResult Function(String error) error,
  }) {
    return userNotLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userNotLoggedIn,
    TResult? Function(UserModel userModel)? user,
    TResult? Function(String error)? error,
  }) {
    return userNotLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userNotLoggedIn,
    TResult Function(UserModel userModel)? user,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (userNotLoggedIn != null) {
      return userNotLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateNotLoggedIn value) userNotLoggedIn,
    required TResult Function(UserStateData value) user,
    required TResult Function(UserStateError value) error,
  }) {
    return userNotLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult? Function(UserStateData value)? user,
    TResult? Function(UserStateError value)? error,
  }) {
    return userNotLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult Function(UserStateData value)? user,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (userNotLoggedIn != null) {
      return userNotLoggedIn(this);
    }
    return orElse();
  }
}

abstract class UserStateNotLoggedIn implements UserState {
  const factory UserStateNotLoggedIn() = _$UserStateNotLoggedIn;
}

/// @nodoc
abstract class _$$UserStateDataCopyWith<$Res> {
  factory _$$UserStateDataCopyWith(
          _$UserStateData value, $Res Function(_$UserStateData) then) =
      __$$UserStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});
}

/// @nodoc
class __$$UserStateDataCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateData>
    implements _$$UserStateDataCopyWith<$Res> {
  __$$UserStateDataCopyWithImpl(
      _$UserStateData _value, $Res Function(_$UserStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$UserStateData(
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UserStateData implements UserStateData {
  const _$UserStateData(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserState.user(userModel: $userModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateData &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateDataCopyWith<_$UserStateData> get copyWith =>
      __$$UserStateDataCopyWithImpl<_$UserStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userNotLoggedIn,
    required TResult Function(UserModel userModel) user,
    required TResult Function(String error) error,
  }) {
    return user(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userNotLoggedIn,
    TResult? Function(UserModel userModel)? user,
    TResult? Function(String error)? error,
  }) {
    return user?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userNotLoggedIn,
    TResult Function(UserModel userModel)? user,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateNotLoggedIn value) userNotLoggedIn,
    required TResult Function(UserStateData value) user,
    required TResult Function(UserStateError value) error,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult? Function(UserStateData value)? user,
    TResult? Function(UserStateError value)? error,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult Function(UserStateData value)? user,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }
}

abstract class UserStateData implements UserState {
  const factory UserStateData(final UserModel userModel) = _$UserStateData;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$UserStateDataCopyWith<_$UserStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserStateErrorCopyWith<$Res> {
  factory _$$UserStateErrorCopyWith(
          _$UserStateError value, $Res Function(_$UserStateError) then) =
      __$$UserStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$UserStateErrorCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateError>
    implements _$$UserStateErrorCopyWith<$Res> {
  __$$UserStateErrorCopyWithImpl(
      _$UserStateError _value, $Res Function(_$UserStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UserStateError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UserStateError implements UserStateError {
  const _$UserStateError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'UserState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateErrorCopyWith<_$UserStateError> get copyWith =>
      __$$UserStateErrorCopyWithImpl<_$UserStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() userNotLoggedIn,
    required TResult Function(UserModel userModel) user,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function()? userNotLoggedIn,
    TResult? Function(UserModel userModel)? user,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? userNotLoggedIn,
    TResult Function(UserModel userModel)? user,
    TResult Function(String error)? error,
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
    required TResult Function(UserStateInit value) init,
    required TResult Function(UserStateNotLoggedIn value) userNotLoggedIn,
    required TResult Function(UserStateData value) user,
    required TResult Function(UserStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UserStateInit value)? init,
    TResult? Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult? Function(UserStateData value)? user,
    TResult? Function(UserStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserStateInit value)? init,
    TResult Function(UserStateNotLoggedIn value)? userNotLoggedIn,
    TResult Function(UserStateData value)? user,
    TResult Function(UserStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class UserStateError implements UserState {
  const factory UserStateError(final String error) = _$UserStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$UserStateErrorCopyWith<_$UserStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
