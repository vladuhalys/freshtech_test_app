// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhoneNumberModel _$PhoneNumberModelFromJson(Map<String, dynamic> json) {
  return _PhoneNumberModel.fromJson(json);
}

/// @nodoc
mixin _$PhoneNumberModel {
  String get number => throw _privateConstructorUsedError;

  /// Serializes this PhoneNumberModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneNumberModelCopyWith<PhoneNumberModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberModelCopyWith<$Res> {
  factory $PhoneNumberModelCopyWith(
          PhoneNumberModel value, $Res Function(PhoneNumberModel) then) =
      _$PhoneNumberModelCopyWithImpl<$Res, PhoneNumberModel>;
  @useResult
  $Res call({String number});
}

/// @nodoc
class _$PhoneNumberModelCopyWithImpl<$Res, $Val extends PhoneNumberModel>
    implements $PhoneNumberModelCopyWith<$Res> {
  _$PhoneNumberModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneNumberModelImplCopyWith<$Res>
    implements $PhoneNumberModelCopyWith<$Res> {
  factory _$$PhoneNumberModelImplCopyWith(_$PhoneNumberModelImpl value,
          $Res Function(_$PhoneNumberModelImpl) then) =
      __$$PhoneNumberModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String number});
}

/// @nodoc
class __$$PhoneNumberModelImplCopyWithImpl<$Res>
    extends _$PhoneNumberModelCopyWithImpl<$Res, _$PhoneNumberModelImpl>
    implements _$$PhoneNumberModelImplCopyWith<$Res> {
  __$$PhoneNumberModelImplCopyWithImpl(_$PhoneNumberModelImpl _value,
      $Res Function(_$PhoneNumberModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$PhoneNumberModelImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneNumberModelImpl implements _PhoneNumberModel {
  const _$PhoneNumberModelImpl({this.number = ''});

  factory _$PhoneNumberModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneNumberModelImplFromJson(json);

  @override
  @JsonKey()
  final String number;

  @override
  String toString() {
    return 'PhoneNumberModel(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberModelImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberModelImplCopyWith<_$PhoneNumberModelImpl> get copyWith =>
      __$$PhoneNumberModelImplCopyWithImpl<_$PhoneNumberModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneNumberModelImplToJson(
      this,
    );
  }
}

abstract class _PhoneNumberModel implements PhoneNumberModel {
  const factory _PhoneNumberModel({final String number}) =
      _$PhoneNumberModelImpl;

  factory _PhoneNumberModel.fromJson(Map<String, dynamic> json) =
      _$PhoneNumberModelImpl.fromJson;

  @override
  String get number;

  /// Create a copy of PhoneNumberModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberModelImplCopyWith<_$PhoneNumberModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
