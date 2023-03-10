// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultDetailModel _$ResultDetailModelFromJson(Map<String, dynamic> json) {
  return _ResultDetail.fromJson(json);
}

/// @nodoc
mixin _$ResultDetailModel {
  String get name => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDetailModelCopyWith<ResultDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDetailModelCopyWith<$Res> {
  factory $ResultDetailModelCopyWith(
          ResultDetailModel value, $Res Function(ResultDetailModel) then) =
      _$ResultDetailModelCopyWithImpl<$Res, ResultDetailModel>;
  @useResult
  $Res call({String name, String contents, String path});
}

/// @nodoc
class _$ResultDetailModelCopyWithImpl<$Res, $Val extends ResultDetailModel>
    implements $ResultDetailModelCopyWith<$Res> {
  _$ResultDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contents = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultDetailCopyWith<$Res>
    implements $ResultDetailModelCopyWith<$Res> {
  factory _$$_ResultDetailCopyWith(
          _$_ResultDetail value, $Res Function(_$_ResultDetail) then) =
      __$$_ResultDetailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String contents, String path});
}

/// @nodoc
class __$$_ResultDetailCopyWithImpl<$Res>
    extends _$ResultDetailModelCopyWithImpl<$Res, _$_ResultDetail>
    implements _$$_ResultDetailCopyWith<$Res> {
  __$$_ResultDetailCopyWithImpl(
      _$_ResultDetail _value, $Res Function(_$_ResultDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? contents = null,
    Object? path = null,
  }) {
    return _then(_$_ResultDetail(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResultDetail implements _ResultDetail {
  _$_ResultDetail(
      {required this.name, required this.contents, required this.path});

  factory _$_ResultDetail.fromJson(Map<String, dynamic> json) =>
      _$$_ResultDetailFromJson(json);

  @override
  final String name;
  @override
  final String contents;
  @override
  final String path;

  @override
  String toString() {
    return 'ResultDetailModel(name: $name, contents: $contents, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultDetail &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contents, contents) ||
                other.contents == contents) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, contents, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultDetailCopyWith<_$_ResultDetail> get copyWith =>
      __$$_ResultDetailCopyWithImpl<_$_ResultDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResultDetailToJson(
      this,
    );
  }
}

abstract class _ResultDetail implements ResultDetailModel {
  factory _ResultDetail(
      {required final String name,
      required final String contents,
      required final String path}) = _$_ResultDetail;

  factory _ResultDetail.fromJson(Map<String, dynamic> json) =
      _$_ResultDetail.fromJson;

  @override
  String get name;
  @override
  String get contents;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_ResultDetailCopyWith<_$_ResultDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
