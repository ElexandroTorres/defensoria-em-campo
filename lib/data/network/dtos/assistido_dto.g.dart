// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assistido_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssistidoDto _$AssistidoDtoFromJson(Map<String, dynamic> json) => AssistidoDto(
      id: json['id'] as String?,
      nome: json['nome'] as String,
      cpf: json['cpf'] as String?,
      idade: (json['idade'] as num?)?.toInt(),
      sexo: json['sexo'] as String?,
      demanda: json['demanda'] as String,
    );

Map<String, dynamic> _$AssistidoDtoToJson(AssistidoDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nome': instance.nome,
      'cpf': instance.cpf,
      'idade': instance.idade,
      'sexo': instance.sexo,
      'demanda': instance.demanda,
    };
