// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskEntityDto _$TaskEntityDtoFromJson(Map<String, dynamic> json) {
  return _TaskEntityDto.fromJson(json);
}

/// @nodoc
mixin _$TaskEntityDto {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskEntityDtoCopyWith<TaskEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityDtoCopyWith<$Res> {
  factory $TaskEntityDtoCopyWith(
          TaskEntityDto value, $Res Function(TaskEntityDto) then) =
      _$TaskEntityDtoCopyWithImpl<$Res>;
  $Res call({String name, String description});
}

/// @nodoc
class _$TaskEntityDtoCopyWithImpl<$Res>
    implements $TaskEntityDtoCopyWith<$Res> {
  _$TaskEntityDtoCopyWithImpl(this._value, this._then);

  final TaskEntityDto _value;
  // ignore: unused_field
  final $Res Function(TaskEntityDto) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TaskEntityDtoCopyWith<$Res>
    implements $TaskEntityDtoCopyWith<$Res> {
  factory _$$_TaskEntityDtoCopyWith(
          _$_TaskEntityDto value, $Res Function(_$_TaskEntityDto) then) =
      __$$_TaskEntityDtoCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description});
}

/// @nodoc
class __$$_TaskEntityDtoCopyWithImpl<$Res>
    extends _$TaskEntityDtoCopyWithImpl<$Res>
    implements _$$_TaskEntityDtoCopyWith<$Res> {
  __$$_TaskEntityDtoCopyWithImpl(
      _$_TaskEntityDto _value, $Res Function(_$_TaskEntityDto) _then)
      : super(_value, (v) => _then(v as _$_TaskEntityDto));

  @override
  _$_TaskEntityDto get _value => super._value as _$_TaskEntityDto;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_TaskEntityDto(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskEntityDto implements _TaskEntityDto {
  const _$_TaskEntityDto({required this.name, required this.description});

  factory _$_TaskEntityDto.fromJson(Map<String, dynamic> json) =>
      _$$_TaskEntityDtoFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'TaskEntityDto(name: $name, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskEntityDto &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_TaskEntityDtoCopyWith<_$_TaskEntityDto> get copyWith =>
      __$$_TaskEntityDtoCopyWithImpl<_$_TaskEntityDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskEntityDtoToJson(
      this,
    );
  }
}

abstract class _TaskEntityDto implements TaskEntityDto {
  const factory _TaskEntityDto(
      {required final String name,
      required final String description}) = _$_TaskEntityDto;

  factory _TaskEntityDto.fromJson(Map<String, dynamic> json) =
      _$_TaskEntityDto.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_TaskEntityDtoCopyWith<_$_TaskEntityDto> get copyWith =>
      throw _privateConstructorUsedError;
}
