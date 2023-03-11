// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cell.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Cell {
  CellState get state => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CellState state) mine,
    required TResult Function(CellState state, int minesAround) free,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CellState state)? mine,
    TResult? Function(CellState state, int minesAround)? free,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CellState state)? mine,
    TResult Function(CellState state, int minesAround)? free,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mine value) mine,
    required TResult Function(Free value) free,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Mine value)? mine,
    TResult? Function(Free value)? free,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mine value)? mine,
    TResult Function(Free value)? free,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CellCopyWith<Cell> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CellCopyWith<$Res> {
  factory $CellCopyWith(Cell value, $Res Function(Cell) then) =
      _$CellCopyWithImpl<$Res, Cell>;
  @useResult
  $Res call({CellState state});
}

/// @nodoc
class _$CellCopyWithImpl<$Res, $Val extends Cell>
    implements $CellCopyWith<$Res> {
  _$CellCopyWithImpl(this._value, this._then);

// ignore: unused_field
  final $Val _value;
// ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CellState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MineCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$MineCopyWith(_$Mine value, $Res Function(_$Mine) then) =
      __$$MineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CellState state});
}

/// @nodoc
class __$$MineCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res, _$Mine>
    implements _$$MineCopyWith<$Res> {
  __$$MineCopyWithImpl(_$Mine _value, $Res Function(_$Mine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
  }) {
    return _then(_$Mine(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CellState,
    ));
  }
}

/// @nodoc

class _$Mine implements Mine {
  const _$Mine(this.state);

  @override
  final CellState state;

  @override
  String toString() {
    return 'Cell.mine(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Mine &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MineCopyWith<_$Mine> get copyWith =>
      __$$MineCopyWithImpl<_$Mine>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CellState state) mine,
    required TResult Function(CellState state, int minesAround) free,
  }) {
    return mine(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CellState state)? mine,
    TResult? Function(CellState state, int minesAround)? free,
  }) {
    return mine?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CellState state)? mine,
    TResult Function(CellState state, int minesAround)? free,
    required TResult orElse(),
  }) {
    if (mine != null) {
      return mine(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mine value) mine,
    required TResult Function(Free value) free,
  }) {
    return mine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Mine value)? mine,
    TResult? Function(Free value)? free,
  }) {
    return mine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mine value)? mine,
    TResult Function(Free value)? free,
    required TResult orElse(),
  }) {
    if (mine != null) {
      return mine(this);
    }
    return orElse();
  }
}

abstract class Mine implements Cell {
  const factory Mine(final CellState state) = _$Mine;

  @override
  CellState get state;
  @override
  @JsonKey(ignore: true)
  _$$MineCopyWith<_$Mine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreeCopyWith<$Res> implements $CellCopyWith<$Res> {
  factory _$$FreeCopyWith(_$Free value, $Res Function(_$Free) then) =
      __$$FreeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CellState state, int minesAround});
}

/// @nodoc
class __$$FreeCopyWithImpl<$Res> extends _$CellCopyWithImpl<$Res, _$Free>
    implements _$$FreeCopyWith<$Res> {
  __$$FreeCopyWithImpl(_$Free _value, $Res Function(_$Free) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? minesAround = null,
  }) {
    return _then(_$Free(
      null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as CellState,
      null == minesAround
          ? _value.minesAround
          : minesAround // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Free implements Free {
  const _$Free(this.state, this.minesAround);

  @override
  final CellState state;
  @override
  final int minesAround;

  @override
  String toString() {
    return 'Cell.free(state: $state, minesAround: $minesAround)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Free &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.minesAround, minesAround) ||
                other.minesAround == minesAround));
  }

  @override
  int get hashCode => Object.hash(runtimeType, state, minesAround);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeCopyWith<_$Free> get copyWith =>
      __$$FreeCopyWithImpl<_$Free>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CellState state) mine,
    required TResult Function(CellState state, int minesAround) free,
  }) {
    return free(state, minesAround);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CellState state)? mine,
    TResult? Function(CellState state, int minesAround)? free,
  }) {
    return free?.call(state, minesAround);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CellState state)? mine,
    TResult Function(CellState state, int minesAround)? free,
    required TResult orElse(),
  }) {
    if (free != null) {
      return free(state, minesAround);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Mine value) mine,
    required TResult Function(Free value) free,
  }) {
    return free(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Mine value)? mine,
    TResult? Function(Free value)? free,
  }) {
    return free?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Mine value)? mine,
    TResult Function(Free value)? free,
    required TResult orElse(),
  }) {
    if (free != null) {
      return free(this);
    }
    return orElse();
  }
}

abstract class Free implements Cell {
  const factory Free(final CellState state, final int minesAround) = _$Free;

  @override
  CellState get state;
  int get minesAround;
  @override
  @JsonKey(ignore: true)
  _$$FreeCopyWith<_$Free> get copyWith => throw _privateConstructorUsedError;
}
