// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StepModel _$StepModelFromJson(Map<String, dynamic> json) {
  return _StepModel.fromJson(json);
}

/// @nodoc
mixin _$StepModel {
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get answerA => throw _privateConstructorUsedError;
  String get answerB => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepModelCopyWith<StepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepModelCopyWith<$Res> {
  factory $StepModelCopyWith(StepModel value, $Res Function(StepModel) then) =
      _$StepModelCopyWithImpl<$Res, StepModel>;
  @useResult
  $Res call({String title, String type, String answerA, String answerB});
}

/// @nodoc
class _$StepModelCopyWithImpl<$Res, $Val extends StepModel>
    implements $StepModelCopyWith<$Res> {
  _$StepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? answerA = null,
    Object? answerB = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      answerA: null == answerA
          ? _value.answerA
          : answerA // ignore: cast_nullable_to_non_nullable
              as String,
      answerB: null == answerB
          ? _value.answerB
          : answerB // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StepModelCopyWith<$Res> implements $StepModelCopyWith<$Res> {
  factory _$$_StepModelCopyWith(
          _$_StepModel value, $Res Function(_$_StepModel) then) =
      __$$_StepModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String type, String answerA, String answerB});
}

/// @nodoc
class __$$_StepModelCopyWithImpl<$Res>
    extends _$StepModelCopyWithImpl<$Res, _$_StepModel>
    implements _$$_StepModelCopyWith<$Res> {
  __$$_StepModelCopyWithImpl(
      _$_StepModel _value, $Res Function(_$_StepModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? type = null,
    Object? answerA = null,
    Object? answerB = null,
  }) {
    return _then(_$_StepModel(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      answerA: null == answerA
          ? _value.answerA
          : answerA // ignore: cast_nullable_to_non_nullable
              as String,
      answerB: null == answerB
          ? _value.answerB
          : answerB // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StepModel implements _StepModel {
  _$_StepModel(
      {required this.title,
      required this.type,
      required this.answerA,
      required this.answerB});

  factory _$_StepModel.fromJson(Map<String, dynamic> json) =>
      _$$_StepModelFromJson(json);

  @override
  final String title;
  @override
  final String type;
  @override
  final String answerA;
  @override
  final String answerB;

  @override
  String toString() {
    return 'StepModel(title: $title, type: $type, answerA: $answerA, answerB: $answerB)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StepModel &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.answerA, answerA) || other.answerA == answerA) &&
            (identical(other.answerB, answerB) || other.answerB == answerB));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, type, answerA, answerB);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StepModelCopyWith<_$_StepModel> get copyWith =>
      __$$_StepModelCopyWithImpl<_$_StepModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StepModelToJson(
      this,
    );
  }
}

abstract class _StepModel implements StepModel {
  factory _StepModel(
      {required final String title,
      required final String type,
      required final String answerA,
      required final String answerB}) = _$_StepModel;

  factory _StepModel.fromJson(Map<String, dynamic> json) =
      _$_StepModel.fromJson;

  @override
  String get title;
  @override
  String get type;
  @override
  String get answerA;
  @override
  String get answerB;
  @override
  @JsonKey(ignore: true)
  _$$_StepModelCopyWith<_$_StepModel> get copyWith =>
      throw _privateConstructorUsedError;
}
