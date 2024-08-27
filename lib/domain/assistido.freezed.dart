// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'assistido.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Assistido {
  String? get id => throw _privateConstructorUsedError;
  String get nome => throw _privateConstructorUsedError;
  String? get cpf => throw _privateConstructorUsedError;
  int? get idade => throw _privateConstructorUsedError;
  String? get sexo => throw _privateConstructorUsedError;
  String get demanda => throw _privateConstructorUsedError;

  /// Create a copy of Assistido
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssistidoCopyWith<Assistido> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistidoCopyWith<$Res> {
  factory $AssistidoCopyWith(Assistido value, $Res Function(Assistido) then) =
      _$AssistidoCopyWithImpl<$Res, Assistido>;
  @useResult
  $Res call(
      {String? id,
      String nome,
      String? cpf,
      int? idade,
      String? sexo,
      String demanda});
}

/// @nodoc
class _$AssistidoCopyWithImpl<$Res, $Val extends Assistido>
    implements $AssistidoCopyWith<$Res> {
  _$AssistidoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Assistido
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? cpf = freezed,
    Object? idade = freezed,
    Object? sexo = freezed,
    Object? demanda = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      idade: freezed == idade
          ? _value.idade
          : idade // ignore: cast_nullable_to_non_nullable
              as int?,
      sexo: freezed == sexo
          ? _value.sexo
          : sexo // ignore: cast_nullable_to_non_nullable
              as String?,
      demanda: null == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssistidoImplCopyWith<$Res>
    implements $AssistidoCopyWith<$Res> {
  factory _$$AssistidoImplCopyWith(
          _$AssistidoImpl value, $Res Function(_$AssistidoImpl) then) =
      __$$AssistidoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String nome,
      String? cpf,
      int? idade,
      String? sexo,
      String demanda});
}

/// @nodoc
class __$$AssistidoImplCopyWithImpl<$Res>
    extends _$AssistidoCopyWithImpl<$Res, _$AssistidoImpl>
    implements _$$AssistidoImplCopyWith<$Res> {
  __$$AssistidoImplCopyWithImpl(
      _$AssistidoImpl _value, $Res Function(_$AssistidoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Assistido
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nome = null,
    Object? cpf = freezed,
    Object? idade = freezed,
    Object? sexo = freezed,
    Object? demanda = null,
  }) {
    return _then(_$AssistidoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nome: null == nome
          ? _value.nome
          : nome // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: freezed == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String?,
      idade: freezed == idade
          ? _value.idade
          : idade // ignore: cast_nullable_to_non_nullable
              as int?,
      sexo: freezed == sexo
          ? _value.sexo
          : sexo // ignore: cast_nullable_to_non_nullable
              as String?,
      demanda: null == demanda
          ? _value.demanda
          : demanda // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AssistidoImpl implements _Assistido {
  const _$AssistidoImpl(
      {this.id,
      required this.nome,
      this.cpf,
      this.idade,
      this.sexo,
      required this.demanda});

  @override
  final String? id;
  @override
  final String nome;
  @override
  final String? cpf;
  @override
  final int? idade;
  @override
  final String? sexo;
  @override
  final String demanda;

  @override
  String toString() {
    return 'Assistido(id: $id, nome: $nome, cpf: $cpf, idade: $idade, sexo: $sexo, demanda: $demanda)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistidoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nome, nome) || other.nome == nome) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.idade, idade) || other.idade == idade) &&
            (identical(other.sexo, sexo) || other.sexo == sexo) &&
            (identical(other.demanda, demanda) || other.demanda == demanda));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, nome, cpf, idade, sexo, demanda);

  /// Create a copy of Assistido
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistidoImplCopyWith<_$AssistidoImpl> get copyWith =>
      __$$AssistidoImplCopyWithImpl<_$AssistidoImpl>(this, _$identity);
}

abstract class _Assistido implements Assistido {
  const factory _Assistido(
      {final String? id,
      required final String nome,
      final String? cpf,
      final int? idade,
      final String? sexo,
      required final String demanda}) = _$AssistidoImpl;

  @override
  String? get id;
  @override
  String get nome;
  @override
  String? get cpf;
  @override
  int? get idade;
  @override
  String? get sexo;
  @override
  String get demanda;

  /// Create a copy of Assistido
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssistidoImplCopyWith<_$AssistidoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
