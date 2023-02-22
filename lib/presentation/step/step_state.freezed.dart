// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepState _$StepStateFromJson(Map<String, dynamic> json) {
  return _StepState.fromJson(json);
}

/// @nodoc
mixin _$StepState {
  List<StepModel> get steps => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepStateCopyWith<StepState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepStateCopyWith<$Res> {
  factory $StepStateCopyWith(StepState value, $Res Function(StepState) then) =
      _$StepStateCopyWithImpl<$Res, StepState>;
  @useResult
  $Res call({List<StepModel> steps, bool isLoading});
}

/// @nodoc
class _$StepStateCopyWithImpl<$Res, $Val extends StepState>
    implements $StepStateCopyWith<$Res> {
  _$StepStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      steps: null == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepStateCopyWith<$Res> implements $StepStateCopyWith<$Res> {
  factory _$$_StepStateCopyWith(
          _$_StepState value, $Res Function(_$_StepState) then) =
      __$$_StepStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StepModel> steps, bool isLoading});
}

/// @nodoc
class __$$_StepStateCopyWithImpl<$Res>
    extends _$StepStateCopyWithImpl<$Res, _$_StepState>
    implements _$$_StepStateCopyWith<$Res> {
  __$$_StepStateCopyWithImpl(
      _$_StepState _value, $Res Function(_$_StepState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? steps = null,
    Object? isLoading = null,
  }) {
    return _then(_$_StepState(
      steps: null == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepState implements _StepState {
  _$_StepState({required final List<StepModel> steps, required this.isLoading})
      : _steps = steps;

  factory _$_StepState.fromJson(Map<String, dynamic> json) =>
      _$$_StepStateFromJson(json);

  final List<StepModel> _steps;
  @override
  List<StepModel> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'StepState(steps: $steps, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepState &&
            const DeepCollectionEquality().equals(other._steps, _steps) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_steps), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepStateCopyWith<_$_StepState> get copyWith =>
      __$$_StepStateCopyWithImpl<_$_StepState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepStateToJson(
      this,
    );
  }
}

abstract class _StepState implements StepState {
  factory _StepState(
      {required final List<StepModel> steps,
      required final bool isLoading}) = _$_StepState;

  factory _StepState.fromJson(Map<String, dynamic> json) =
      _$_StepState.fromJson;

  @override
  List<StepModel> get steps;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_StepStateCopyWith<_$_StepState> get copyWith =>
      throw _privateConstructorUsedError;
}
