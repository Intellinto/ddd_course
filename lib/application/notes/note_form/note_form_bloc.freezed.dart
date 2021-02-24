// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'note_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NoteFormEventTearOff {
  const _$NoteFormEventTearOff();

// ignore: unused_element
  _BodyChanged bodyChanged(String bodyStr) {
    return _BodyChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  _ColorChanged colorChanged(Color bodyStr) {
    return _ColorChanged(
      bodyStr,
    );
  }

// ignore: unused_element
  _TodosChanged todosChanged(Color bodyStr) {
    return _TodosChanged(
      bodyStr,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NoteFormEvent = _$NoteFormEventTearOff();

/// @nodoc
mixin _$NoteFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult bodyChanged(String bodyStr),
    @required TResult colorChanged(Color bodyStr),
    @required TResult todosChanged(Color bodyStr),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult bodyChanged(String bodyStr),
    TResult colorChanged(Color bodyStr),
    TResult todosChanged(Color bodyStr),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult colorChanged(_ColorChanged value),
    @required TResult todosChanged(_TodosChanged value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult bodyChanged(_BodyChanged value),
    TResult colorChanged(_ColorChanged value),
    TResult todosChanged(_TodosChanged value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NoteFormEventCopyWith<$Res> {
  factory $NoteFormEventCopyWith(
          NoteFormEvent value, $Res Function(NoteFormEvent) then) =
      _$NoteFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormEventCopyWithImpl<$Res>
    implements $NoteFormEventCopyWith<$Res> {
  _$NoteFormEventCopyWithImpl(this._value, this._then);

  final NoteFormEvent _value;
  // ignore: unused_field
  final $Res Function(NoteFormEvent) _then;
}

/// @nodoc
abstract class _$BodyChangedCopyWith<$Res> {
  factory _$BodyChangedCopyWith(
          _BodyChanged value, $Res Function(_BodyChanged) then) =
      __$BodyChangedCopyWithImpl<$Res>;
  $Res call({String bodyStr});
}

/// @nodoc
class __$BodyChangedCopyWithImpl<$Res> extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$BodyChangedCopyWith<$Res> {
  __$BodyChangedCopyWithImpl(
      _BodyChanged _value, $Res Function(_BodyChanged) _then)
      : super(_value, (v) => _then(v as _BodyChanged));

  @override
  _BodyChanged get _value => super._value as _BodyChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_BodyChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as String,
    ));
  }
}

/// @nodoc
class _$_BodyChanged implements _BodyChanged {
  const _$_BodyChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final String bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.bodyChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BodyChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  _$BodyChangedCopyWith<_BodyChanged> get copyWith =>
      __$BodyChangedCopyWithImpl<_BodyChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult bodyChanged(String bodyStr),
    @required TResult colorChanged(Color bodyStr),
    @required TResult todosChanged(Color bodyStr),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return bodyChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult bodyChanged(String bodyStr),
    TResult colorChanged(Color bodyStr),
    TResult todosChanged(Color bodyStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult colorChanged(_ColorChanged value),
    @required TResult todosChanged(_TodosChanged value),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return bodyChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult bodyChanged(_BodyChanged value),
    TResult colorChanged(_ColorChanged value),
    TResult todosChanged(_TodosChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (bodyChanged != null) {
      return bodyChanged(this);
    }
    return orElse();
  }
}

abstract class _BodyChanged implements NoteFormEvent {
  const factory _BodyChanged(String bodyStr) = _$_BodyChanged;

  String get bodyStr;
  @JsonKey(ignore: true)
  _$BodyChangedCopyWith<_BodyChanged> get copyWith;
}

/// @nodoc
abstract class _$ColorChangedCopyWith<$Res> {
  factory _$ColorChangedCopyWith(
          _ColorChanged value, $Res Function(_ColorChanged) then) =
      __$ColorChangedCopyWithImpl<$Res>;
  $Res call({Color bodyStr});
}

/// @nodoc
class __$ColorChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$ColorChangedCopyWith<$Res> {
  __$ColorChangedCopyWithImpl(
      _ColorChanged _value, $Res Function(_ColorChanged) _then)
      : super(_value, (v) => _then(v as _ColorChanged));

  @override
  _ColorChanged get _value => super._value as _ColorChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_ColorChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as Color,
    ));
  }
}

/// @nodoc
class _$_ColorChanged implements _ColorChanged {
  const _$_ColorChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final Color bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.colorChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ColorChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  _$ColorChangedCopyWith<_ColorChanged> get copyWith =>
      __$ColorChangedCopyWithImpl<_ColorChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult bodyChanged(String bodyStr),
    @required TResult colorChanged(Color bodyStr),
    @required TResult todosChanged(Color bodyStr),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return colorChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult bodyChanged(String bodyStr),
    TResult colorChanged(Color bodyStr),
    TResult todosChanged(Color bodyStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult colorChanged(_ColorChanged value),
    @required TResult todosChanged(_TodosChanged value),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return colorChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult bodyChanged(_BodyChanged value),
    TResult colorChanged(_ColorChanged value),
    TResult todosChanged(_TodosChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (colorChanged != null) {
      return colorChanged(this);
    }
    return orElse();
  }
}

abstract class _ColorChanged implements NoteFormEvent {
  const factory _ColorChanged(Color bodyStr) = _$_ColorChanged;

  Color get bodyStr;
  @JsonKey(ignore: true)
  _$ColorChangedCopyWith<_ColorChanged> get copyWith;
}

/// @nodoc
abstract class _$TodosChangedCopyWith<$Res> {
  factory _$TodosChangedCopyWith(
          _TodosChanged value, $Res Function(_TodosChanged) then) =
      __$TodosChangedCopyWithImpl<$Res>;
  $Res call({Color bodyStr});
}

/// @nodoc
class __$TodosChangedCopyWithImpl<$Res>
    extends _$NoteFormEventCopyWithImpl<$Res>
    implements _$TodosChangedCopyWith<$Res> {
  __$TodosChangedCopyWithImpl(
      _TodosChanged _value, $Res Function(_TodosChanged) _then)
      : super(_value, (v) => _then(v as _TodosChanged));

  @override
  _TodosChanged get _value => super._value as _TodosChanged;

  @override
  $Res call({
    Object bodyStr = freezed,
  }) {
    return _then(_TodosChanged(
      bodyStr == freezed ? _value.bodyStr : bodyStr as Color,
    ));
  }
}

/// @nodoc
class _$_TodosChanged implements _TodosChanged {
  const _$_TodosChanged(this.bodyStr) : assert(bodyStr != null);

  @override
  final Color bodyStr;

  @override
  String toString() {
    return 'NoteFormEvent.todosChanged(bodyStr: $bodyStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TodosChanged &&
            (identical(other.bodyStr, bodyStr) ||
                const DeepCollectionEquality().equals(other.bodyStr, bodyStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(bodyStr);

  @JsonKey(ignore: true)
  @override
  _$TodosChangedCopyWith<_TodosChanged> get copyWith =>
      __$TodosChangedCopyWithImpl<_TodosChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult bodyChanged(String bodyStr),
    @required TResult colorChanged(Color bodyStr),
    @required TResult todosChanged(Color bodyStr),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return todosChanged(bodyStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult bodyChanged(String bodyStr),
    TResult colorChanged(Color bodyStr),
    TResult todosChanged(Color bodyStr),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(bodyStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult bodyChanged(_BodyChanged value),
    @required TResult colorChanged(_ColorChanged value),
    @required TResult todosChanged(_TodosChanged value),
  }) {
    assert(bodyChanged != null);
    assert(colorChanged != null);
    assert(todosChanged != null);
    return todosChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult bodyChanged(_BodyChanged value),
    TResult colorChanged(_ColorChanged value),
    TResult todosChanged(_TodosChanged value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (todosChanged != null) {
      return todosChanged(this);
    }
    return orElse();
  }
}

abstract class _TodosChanged implements NoteFormEvent {
  const factory _TodosChanged(Color bodyStr) = _$_TodosChanged;

  Color get bodyStr;
  @JsonKey(ignore: true)
  _$TodosChangedCopyWith<_TodosChanged> get copyWith;
}

/// @nodoc
class _$NoteFormStateTearOff {
  const _$NoteFormStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }
}

/// @nodoc
// ignore: unused_element
const $NoteFormState = _$NoteFormStateTearOff();

/// @nodoc
mixin _$NoteFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NoteFormStateCopyWith<$Res> {
  factory $NoteFormStateCopyWith(
          NoteFormState value, $Res Function(NoteFormState) then) =
      _$NoteFormStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoteFormStateCopyWithImpl<$Res>
    implements $NoteFormStateCopyWith<$Res> {
  _$NoteFormStateCopyWithImpl(this._value, this._then);

  final NoteFormState _value;
  // ignore: unused_field
  final $Res Function(NoteFormState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NoteFormStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NoteFormState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult initial(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult initial(_Initial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult initial(_Initial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NoteFormState {
  const factory _Initial() = _$_Initial;
}
