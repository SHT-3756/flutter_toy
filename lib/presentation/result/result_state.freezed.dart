// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultState _$ResultStateFromJson(Map<String, dynamic> json) {
  return _ResultState.fromJson(json);
}

/// @nodoc
mixin _$ResultState {
  List<ResultModel> get results => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultStateCopyWith<ResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res, ResultState>;
  @useResult
  $Res call({List<ResultModel> results, bool isLoading});
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res, $Val extends ResultState>
    implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultStateCopyWith<$Res>
    implements $ResultStateCopyWith<$Res> {
  factory _$$_ResultStateCopyWith(
          _$_ResultState value, $Res Function(_$_ResultState) then) =
      __$$_ResultStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ResultModel> results, bool isLoading});
}

/// @nodoc
class __$$_ResultStateCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res, _$_ResultState>
    implements _$$_ResultStateCopyWith<$Res> {
  __$$_ResultStateCopyWithImpl(
      _$_ResultState _value, $Res Function(_$_ResultState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? isLoading = null,
  }) {
    return _then(_$_ResultState(
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ResultModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultState implements _ResultState {
  _$_ResultState(
      {required final List<ResultModel> results, required this.isLoading})
      : _results = results;

  factory _$_ResultState.fromJson(Map<String, dynamic> json) =>
      _$$_ResultStateFromJson(json);

  final List<ResultModel> _results;
  @override
  List<ResultModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ResultState(results: $results, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultState &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_results), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultStateCopyWith<_$_ResultState> get copyWith =>
      __$$_ResultStateCopyWithImpl<_$_ResultState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultStateToJson(
      this,
    );
  }
}

abstract class _ResultState implements ResultState {
  factory _ResultState(
      {required final List<ResultModel> results,
      required final bool isLoading}) = _$_ResultState;

  factory _ResultState.fromJson(Map<String, dynamic> json) =
      _$_ResultState.fromJson;

  @override
  List<ResultModel> get results;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ResultStateCopyWith<_$_ResultState> get copyWith =>
      throw _privateConstructorUsedError;
}
